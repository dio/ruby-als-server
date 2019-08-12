#!/usr/bin/env ruby

require 'json'
require 'rubygems'
require 'envoy/service/accesslog/v2/als_services_pb'

module Als
    class Server
        def self.start
            port = ENV["PORT"] ? ENV["PORT"] : '0.0.0.0:3000'
            s = GRPC::RpcServer.new
            s.add_http2_port(port, :this_port_is_insecure)
            s.handle(ServerImpl.new)
            s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
        end
    end

    class ServerImpl < Envoy::Service::Accesslog::V2::AccessLogService::Service
        def stream_access_logs(call)
            call.each_remote_read do |entry|
                puts entry.to_json
            end
            Envoy::Service::Accesslog::V2::StreamAccessLogsResponse.new
        end
    end
end

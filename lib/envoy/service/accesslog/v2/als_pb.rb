# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: envoy/service/accesslog/v2/als.proto

require 'google/protobuf'

require 'envoy/api/v2/core/base_pb'
require 'envoy/data/accesslog/v2/accesslog_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("envoy/service/accesslog/v2/als.proto", :syntax => :proto3) do
    add_message "envoy.service.accesslog.v2.StreamAccessLogsResponse" do
    end
    add_message "envoy.service.accesslog.v2.StreamAccessLogsMessage" do
      optional :identifier, :message, 1, "envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier"
      oneof :log_entries do
        optional :http_logs, :message, 2, "envoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries"
        optional :tcp_logs, :message, 3, "envoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntries"
      end
    end
    add_message "envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier" do
      optional :node, :message, 1, "envoy.api.v2.core.Node"
      optional :log_name, :string, 2
    end
    add_message "envoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries" do
      repeated :log_entry, :message, 1, "envoy.data.accesslog.v2.HTTPAccessLogEntry"
    end
    add_message "envoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntries" do
      repeated :log_entry, :message, 1, "envoy.data.accesslog.v2.TCPAccessLogEntry"
    end
  end
end

module Envoy
  module Service
    module Accesslog
      module V2
        StreamAccessLogsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.accesslog.v2.StreamAccessLogsResponse").msgclass
        StreamAccessLogsMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.accesslog.v2.StreamAccessLogsMessage").msgclass
        StreamAccessLogsMessage::Identifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.accesslog.v2.StreamAccessLogsMessage.Identifier").msgclass
        StreamAccessLogsMessage::HTTPAccessLogEntries = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.accesslog.v2.StreamAccessLogsMessage.HTTPAccessLogEntries").msgclass
        StreamAccessLogsMessage::TCPAccessLogEntries = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.accesslog.v2.StreamAccessLogsMessage.TCPAccessLogEntries").msgclass
      end
    end
  end
end

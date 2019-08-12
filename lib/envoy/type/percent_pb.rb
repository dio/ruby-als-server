# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: envoy/type/percent.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("envoy/type/percent.proto", :syntax => :proto3) do
    add_message "envoy.type.Percent" do
      optional :value, :double, 1
    end
    add_message "envoy.type.FractionalPercent" do
      optional :numerator, :uint32, 1
      optional :denominator, :enum, 2, "envoy.type.FractionalPercent.DenominatorType"
    end
    add_enum "envoy.type.FractionalPercent.DenominatorType" do
      value :HUNDRED, 0
      value :TEN_THOUSAND, 1
      value :MILLION, 2
    end
  end
end

module Envoy
  module Type
    Percent = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.type.Percent").msgclass
    FractionalPercent = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.type.FractionalPercent").msgclass
    FractionalPercent::DenominatorType = Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.type.FractionalPercent.DenominatorType").enummodule
  end
end

# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
$LOAD_PATH.push File.expand_path("../test/helloworld", __dir__)

require "grpc-prometheus"

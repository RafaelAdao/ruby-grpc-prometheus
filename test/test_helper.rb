# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
$LOAD_PATH.push File.expand_path("../../test/helloworld", __FILE__)

require "pry"
require "grpc-prometheus"

require "minitest/autorun"

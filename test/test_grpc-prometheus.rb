require 'minitest/autorun'
require 'grpc-prometheus'

class GRPCPrometheusTest < Minitest::Test
  def test_any_hello
    assert_equal "Hello world!",
      GRPCPrometheus.hi
  end
end
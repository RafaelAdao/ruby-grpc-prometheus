require "test_helper"
require 'grpc'
require 'greeter_server'

describe "greeter_server" do
  before do
    s = GRPC::RpcServer.new
    s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
    s.handle(GreeterServer)
    Thread.new { s.run }
  end

  describe "when asked about cheeseburgers" do
    before do
      @stub = Helloworld::Greeter::Stub.new("localhost:50051", :this_channel_is_insecure)
    end

    it "must respond positively" do
      binding.pry
      message = @stub.say_hello(Helloworld::HelloRequest.new(name: 'rafael')).message
      p "Greeting: #{message}"

      _("OHAI!").must_equal "OHAI!"
    end
  end
end

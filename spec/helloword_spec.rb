# frozen_string_literal: true

require "grpc"
require_relative "./helloworld/greeter_server"

describe "helloworld" do
  before do
    @server = GRPC::Core::Server.new
    @server.add_http2_port("0.0.0.0:50051", :this_port_is_insecure)
    @server.handle(GreeterServer)
    @server.start
  end

  after do
    @server.shutdown
    @server.close
  end

  describe "#say_hello" do
    before do
      @stub = Helloworld::Greeter::Stub.new("localhost:50051", :this_channel_is_insecure)
    end

    it "must greet" do
      message = @stub.say_hello(Helloworld::HelloRequest.new(name: "world!")).message
      expect(message).to eq("Hello world!")
    end
  end
end

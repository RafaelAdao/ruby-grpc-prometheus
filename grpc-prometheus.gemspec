require File.expand_path("../lib/grpc_prometheus/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'grpc-prometheus'
  s.version     = GRPCPrometheus::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Monitor gRPC server"
  s.description = "Prometheus monitoring for your gRPC Ruby servers."
  s.authors     = ["Rafael Adão"]
  s.email       = 'rafael.adao@hotmail.com.br'
  s.files       = ["lib/grpc-prometheus.rb"]
  s.homepage    =
    'https://github.com/RafaelAdao/ruby-grpc-prometheus'
  s.license       = 'MIT'
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
end
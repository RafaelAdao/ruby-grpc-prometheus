# frozen_string_literal: true

require_relative "lib/grpc-prometheus/version"

Gem::Specification.new do |s|
  s.name        = "grpc-prometheus"
  s.version     = GRPCPrometheus::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Monitor gRPC server"
  s.description = "Prometheus monitoring for your gRPC Ruby servers."
  s.authors     = ["Rafael Adão"]
  s.email       = "rafael.adao@hotmail.com.br"
  s.files       = ["lib/grpc-prometheus.rb"]
  s.homepage    =
    "https://github.com/RafaelAdao/ruby-grpc-prometheus"
  s.license = "MIT"
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "grpc", "~> 1.45.0"
  s.add_dependency "prometheus-client", "~> 3.0.0"

  s.add_development_dependency "grpc-tools"
end

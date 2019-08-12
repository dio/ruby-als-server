lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "als/version"

Gem::Specification.new do |spec|
  spec.name          = "als"
  spec.version       = Als::VERSION
  spec.authors       = ["Dhi Aurrahman"]
  spec.email         = ["dio@rockybars.com"]
  spec.licenses      = ['MIT']
  spec.summary       = "This is a POC of Envoy ALS Server"
  spec.description   = "This is a POC of Envoy ALS Server, only do inspect for each received message"
  spec.homepage      = "https://github.com/dio/ruby-als-server"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dio/ruby-als-server"
  spec.metadata["changelog_uri"] = "https://github.com/dio/ruby-als-server/CHANGELOG.md"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_dependency "grpc", "~> 1.22"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

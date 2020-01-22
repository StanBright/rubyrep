# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyrep/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyrep"
  spec.version       = RR::VERSION
  spec.authors       = ["Arndt Lehmann"]
  spec.email         = ["arndtlehmann@arndtlehmann.com"]

  spec.summary       = %q{Open-source solution for asynchronous, master-master replication of relational databases.}
  spec.homepage      = "http://www.rubyrep.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "awesome_print"
end

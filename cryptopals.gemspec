# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Cryptopals-ruby"
  spec.version       = '1.0'
  spec.authors       = ["Manolis Mavrofidis"]
  spec.email         = ["mmavrofides@gmail.com"]
  spec.summary       = %q{Cryptopals solutions in Ruby}
  spec.description   = %q{Cryptopals solutions in Ruby}

  spec.files         = ['lib/cryptopals.rb']
  spec.executables   = ['bin/cryptopals']
  spec.test_files    = ['tests/test_cryptopals.rb']
  spec.require_paths = ["lib"]
end
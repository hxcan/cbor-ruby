$:.push File.expand_path("../lib", __FILE__)
require 'cbor/version'

Gem::Specification.new do |s|
  s.name = "hx_cbor"
  s.version = CBOR::VERSION
  s.summary = "CBOR, Concise Binary Object Representation."
  s.description = %q{CBOR is a library for the CBOR binary object representation format, based on Sadayuki Furuhashi's MessagePack library.}
  s.author = "Carsten Bormann, Hxcan Cai"
  s.email = "caihuosheng@gmail.com"
  s.license = "Apache-2.0"
  s.homepage = "https://stupidbeauty.com/Blog/article/1900"
#  s.has_rdoc = false
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec}/*`.split("\n")
  s.require_paths = ["lib"]
  s.extensions = ["ext/cbor/extconf.rb"]

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake', ['~> 0.9.2']
  s.add_development_dependency 'rake-compiler', ['~> 0.8.3']
  s.add_development_dependency 'rspec', ['~> 2.11']
  s.add_development_dependency 'json', ['~> 1.7']
  s.add_development_dependency 'yard', ['~> 0.9.11']
end

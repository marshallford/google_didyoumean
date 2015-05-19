# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "google_spellcheck/version"

Gem::Specification.new do |spec|
    spec.name          = "google_spellcheck"
    spec.version       = GoogleSpellcheck::VERSION
    spec.authors       = ["Marshall Ford"]
    spec.email         = ["inbox@marshallford.me"]

    spec.summary       = %q{A spellchecker using Google's search engine}
    spec.homepage      = "https://github.com/marshallford/google_spellcheck"
    spec.license       = "MIT"

    spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    spec.add_development_dependency "bundler"
    spec.add_development_dependency "rake"
    spec.add_development_dependency "minitest"
    spec.add_development_dependency "vcr"
    spec.add_development_dependency "webmock"
    spec.add_dependency "httparty"
    spec.add_dependency "json"
    spec.add_dependency "nokogiri"
end

Gem::Specification.new do |spec|
  spec.name          = "lita-heroku-status"
  spec.version       = "0.1.0"
  spec.authors       = ["Junya Ogura"]
  spec.email         = ["junyaogura@gmail.com"]
  spec.description   = "Ask your bot how Heroku is doing"
  spec.summary       = "Ask your bot how Heroku is doing"
  spec.homepage      = "https://github.com/juno/lita-heroku-status"
  spec.license       = "MIT LICENSE"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end

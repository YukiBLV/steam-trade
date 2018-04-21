
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "steam-trade"
  spec.version       = '0.0.1'
  spec.date             = '2018-04-21'
  spec.authors       = ["OmG3r"]
  spec.email         = ["adam.boulila@live.fr"]
  spec.files            = Dir['lib/   *.rb'] + Dir['bin/*']
  spec.summary       = %q{Manage steam trading offers. }
  spec.description   = %q{Send steam trading offers, generate steam 2FA codes, confirm steam trade offers}
  spec.homepage      = "https://github.com/OmG3r/Test"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "mechanize", '~> 2.7', '>= 2.7.5'
  spec.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'
  spec.add_runtime_dependency 'openssl', '~> 2.1', '>= 2.1.0'
end

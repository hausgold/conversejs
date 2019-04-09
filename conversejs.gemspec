
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conversejs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'conversejs'
  spec.version       = Conversejs::Rails::VERSION
  spec.authors       = ['Henning Vogt']
  spec.email         = ['henning.vogt@hausgold.de']

  spec.summary       = 'Converse.js for your Rails application'
  spec.homepage      = 'https://github.com/hausgold/conversejs'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 4.2.0'

  spec.add_development_dependency 'bundler', '>= 1.16', '< 3'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.15'

  spec.add_development_dependency 'rails', '>= 4.2.0', '< 6'
  spec.add_development_dependency 'rspec-rails', '~> 3.7'
end

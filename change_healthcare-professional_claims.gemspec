# frozen_string_literal: true

require_relative 'lib/change_healthcare/professional_claims/version'

Gem::Specification.new do |spec|
  spec.name          = 'change_healthcare-professional_claims'
  spec.version       = ChangeHealthcare::ProfessionalClaims::VERSION
  spec.authors       = ['Anthony Super']
  spec.email         = ['asuper@sondermind.com']

  spec.summary       = 'Change Healthcare Professional Claims API (Unofficial)'
  spec.description   = "Provides a nicely-wrapped generated swagger client for CHC's professional claims API v3"
  spec.homepage      = 'https://github.com/SonderMindOrg/change_healthcare-professional_claims'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.5')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SonderMindOrg/change_healthcare-professional_claims'
  spec.metadata['changelog_uri'] = 'https://github.com/SonderMindOrg/change_healthcare-professional_claims/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # needed for autogen swagged client
  spec.add_dependency 'addressable', '~> 2.5'
  spec.add_dependency 'typhoeus', '~> 1.4'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'solargraph'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pry'
end

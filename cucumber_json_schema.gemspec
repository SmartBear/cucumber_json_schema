# frozen_string_literal: true

require_relative 'lib/cucumber_json_schema/version'

Gem::Specification.new do |spec|
  spec.name          = 'cucumber_json_schema'
  spec.version       = CucumberJsonSchema::VERSION
  spec.authors       = ['Timothée Ville', 'Cynthia Maillard', 'Mathias Coqblin']
  spec.email         = ['timothee.ville@smartbear.com', 'cynthia.maillard@smartbear.com',
                        'mathias.coqblin@smartbear.com']

  spec.summary       = 'JSON schema that describes cucumber JSON reports'
  spec.homepage      = 'https://github.com/Smartbear/cucumber-json-schema'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://github.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Smartbear/cucumber-json-schema'
  spec.metadata['changelog_uri'] = 'https://github.com/Smartbear/cucumber-json-schema/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rubocop', '~> 1.12.0'
end

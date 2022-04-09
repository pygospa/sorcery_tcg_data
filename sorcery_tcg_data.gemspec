# frozen_string_literal: true

require_relative "lib/sorcery_tcg_data/version"

Gem::Specification.new do |spec|
  spec.name = "sorcery_tcg_data"
  spec.version = SorceryTcgData::VERSION
  spec.authors = ["Tony Schneider"]
  spec.email = ["tonywok@gmail.com"]

  spec.summary = "sorcery tcg data"
  spec.homepage = "https://github.com/realmsapp/sorcery_tcg_data"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "data"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "debug"
  spec.add_development_dependency "terminal-table"
end

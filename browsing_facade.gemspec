require_relative "lib/browsing_facade/version"

Gem::Specification.new do |spec|
  spec.name = "browsing_facade"
  spec.version = BrowsingFacade::VERSION
  spec.authors = ["Martin Moen Wulffeld"]
  spec.email = ["martin@wulffeld.dk"]

  spec.summary = "A facade for browsing"
  spec.homepage = "https://github.com/wulffeld/browsing_facade"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wulffeld/browsing_facade"
  spec.metadata["changelog_uri"] = "https://github.com/wulffeld/browsing_facade/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ferrum"
  spec.add_development_dependency "rspec", ">= 3.12.0"
  spec.add_development_dependency "rake"
end

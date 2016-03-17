$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "rspec/matchers/be_an_array_of/identity"

Gem::Specification.new do |spec|
  spec.name = RSpec::Matchers::BeAnArrayOf::Identity.name
  spec.version = RSpec::Matchers::BeAnArrayOf::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Pooyan Khosravi"]
  spec.email = ["pekhee@gmail.com"]
  spec.homepage = "https://github.com/pekhee/rspec-matchers-be_an_array_of"
  spec.summary = "rspec matcher be_an_array_of type"
  spec.description =
    "An RSpec matcher that ensures expected is an array and each element is of specified type."
  spec.license = "MIT"

  if ENV["RUBY_GEM_SECURITY"] == "enabled"
    spec.signing_key = File.expand_path("~/.ssh/gem-private.pem")
    spec.cert_chain = [File.expand_path("~/.ssh/gem-public.pem")]
  end

  spec.add_dependency "rspec"
  spec.add_dependency "rspec-matcher"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "gemsmith"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-state"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files = Dir["lib/**/*", "vendor/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end

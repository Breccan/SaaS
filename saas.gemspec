# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "saas"
  s.summary = "An engine for managing SaaS billing"
  s.description = "An engine for managing SaaS billing."
  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["test/**/*"]
  s.version = "0.0.1"

  s.add_dependency "rails", "~> 3.1.0.rc1"
  s.add_dependency "activemerchant", ">= 1.9.4"
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "devise", :path => "../devise"
end

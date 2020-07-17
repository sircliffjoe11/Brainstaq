# -*- encoding: utf-8 -*-
# stub: rave_ruby 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rave_ruby".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/MaestroJolly/rave-ruby", "homepage_uri" => "https://github.com/MaestroJolly/rave-ruby", "source_code_uri" => "https://github.com/MaestroJolly/rave-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["MaestroJolly".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-01-19"
  s.description = "This is the official Ruby Gem For Rave Payments which includes Card, Account, Transfer, Subaccount, Subscription, Mpesa, Ghana Mobile Money, Ussd, Payment Plans, and Transfer payment methods.".freeze
  s.email = ["jolaosoyusuf@gmail.com".freeze]
  s.homepage = "https://github.com/MaestroJolly/rave-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.3".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "Ruby Gem For Rave Payments By Flutterwave.".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.17"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.16.3"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.17"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<httparty>.freeze, ["~> 0.16.3"])
  end
end

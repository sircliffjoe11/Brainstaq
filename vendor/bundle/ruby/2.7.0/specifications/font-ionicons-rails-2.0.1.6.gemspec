# -*- encoding: utf-8 -*-
# stub: font-ionicons-rails 2.0.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "font-ionicons-rails".freeze
  s.version = "2.0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ricardo Emerson".freeze]
  s.date = "2019-09-01"
  s.description = "The best Ionicons gem made for Ruby on Rails and with helpers for better use.".freeze
  s.email = ["ricardo_emerson@yahoo.com.br".freeze]
  s.homepage = "https://github.com/ricardoemerson/font-ionicons-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "an asset gemification of the ionicons icon font library".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.2", "< 7.0"])
    s.add_development_dependency(%q<activesupport>.freeze, ["~> 0"])
    s.add_development_dependency(%q<sass-rails>.freeze, ["~> 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.2", "< 7.0"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 0"])
    s.add_dependency(%q<sass-rails>.freeze, ["~> 0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: tel_to_helper 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tel_to_helper".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jianqiu Xiao".freeze]
  s.date = "2016-02-18"
  s.description = "Generate tel protocol link tag for html view.".freeze
  s.email = ["swordray@gmail.com".freeze]
  s.homepage = "https://github.com/swordray/tel_to_helper".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "Telephone Link Tag Helper".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 0"])
  end
end

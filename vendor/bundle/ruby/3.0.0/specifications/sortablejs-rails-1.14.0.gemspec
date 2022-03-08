# -*- encoding: utf-8 -*-
# stub: sortablejs-rails 1.14.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sortablejs-rails".freeze
  s.version = "1.14.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manuel Schnitzer".freeze]
  s.date = "2021-12-22"
  s.description = "A gem that provides the SortableJS library to Rails's asset pipeline.".freeze
  s.email = "webmaster@mschnitzer.de".freeze
  s.homepage = "https://github.com/mschnitzer/sortablejs-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "SortableJS for Ruby on Rails".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, ["< 8", ">= 6.0.0"])
  else
    s.add_dependency(%q<rails>.freeze, ["< 8", ">= 6.0.0"])
  end
end

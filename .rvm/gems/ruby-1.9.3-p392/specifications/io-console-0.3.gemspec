# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "io-console"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nobu Nakada"]
  s.date = "2011-06-24"
  s.description = "add console capabilities to IO instances."
  s.email = "nobu@ruby-lang.org"
  s.extensions = ["extconf.rb"]
  s.files = ["extconf.rb"]
  s.homepage = "http://www.ruby-lang.org"
  s.require_paths = ["."]
  s.rubygems_version = "1.8.25"
  s.summary = "Console interface"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

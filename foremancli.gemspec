
# -*- encoding: utf-8 -*-
$:.push('lib')
require "foremancli/version"

Gem::Specification.new do |s|
  s.name     = "foremancli"
  s.version  = Foremancli::VERSION.dup
  s.date     = "2012-05-01"
  s.summary  = "This is the CLI for Foreman, which is a provisioning tool and node classifier for sysadmins."
  s.email    = "brian.gupta@brandorr.com"
  s.homepage = "https://github.com/ohadlevy/foreman/blob/master/extras/cli/foremancli"
  s.authors  = ['Brian Gupta']
  
  s.description = <<-EOF
This is the CLI for Foreman, which is a provisioning tool and node classifier for sysadmins.
EOF
  
  dependencies = [
    [:runtime,     "rest-client",  "~> 1.4"],
    [:runtime, "json", "~> 1.4"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "1.3.7"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbhive/version'

Gem::Specification.new do |spec|
  spec.name = 'rbhive-vidma'
  spec.version = RBHive::VERSION
  spec.authors = %w(Forward3D KolobocK)
  spec.description = 'Simple gem for executing Hive queries and collecting the results'
  spec.summary = 'Simple gem for executing Hive queries'
  spec.email = ['andy@forward.co.uk', 'kolobock@gmail.com', 'developers@forward3d.com']
  spec.homepage = 'http://github.com/forward3d/rbhive'
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency('thrift', '= 0.9.1')
  spec.add_dependency('json')

  # to make thrift 0.9.1 works requires rack+thin. workaround by including it here.
  # https://issues.apache.org/jira/browse/THRIFT-2145
  # https://issues.apache.org/jira/secure/attachment/12599457/thrift-0.9.1-rack-thin-dependency.patch
  spec.add_dependency('rack', '= 1.5.2')
  spec.add_dependency('thin', '= 1.5.0')

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler', '>= 1.3'

end

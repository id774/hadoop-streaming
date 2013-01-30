# encoding: utf-8

require 'rubygems'

require 'rspec/core'
require 'rspec/core/rake_task'

task :spec do
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.rspec_opts = ["-c","-fs"]
    fileset = FileList['spec/lib/**/*_spec.rb']
    spec.pattern = fileset.exclude('**/sqlite_spec.rb').exclude('**/hive_spec.rb')
  end
end

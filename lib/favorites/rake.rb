require 'bundler/gem_tasks'
require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    require 'favorites'
  end
end

task :default => :spec

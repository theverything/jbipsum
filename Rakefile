begin
  require "rspec/core/rake_task"

  desc "Run all examples"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = %w[--color]
    t.pattern = 'spec/*_spec.rb'
  end

  task :test => :spec
rescue LoadError
end

task :start do
  `ruby app.rb`
end

namespace :scss do
  task :build do
    `sass --update sass:public/css --style compressed --scss`
  end

  task :watch do
    `sass --watch sass:public/css --style expanded -l --scss`
  end
end

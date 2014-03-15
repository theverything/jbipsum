require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :test => :spec

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

require_relative "application_generator"

desc "Run the full suite using parallel_tests to run on multiple cores"
task test: [:setup, :spec, :cucumber]

desc "Creates a test rails app for the parallel specs to run against"
task :setup, [:rails_env, :template] do |_t, opts|
  ActiveAdmin::ApplicationGenerator.new(opts).generate
end

desc "Run the specs in parallel"
task :spec do
  sh("parallel_rspec --serialize-stdout --combine-stderr --verbose spec/")
end

desc "Run the cucumber scenarios"
task cucumber: [:"cucumber:regular", :"cucumber:reloading"]

namespace :cucumber do

  desc "Run the standard cucumber scenarios in parallel"
  task :regular do
    sh("parallel_cucumber --serialize-stdout --combine-stderr --verbose features/")
  end

  desc "Run the cucumber scenarios that test reloading"
  task :reloading do
    sh("cucumber --profile class-reloading")
  end

end

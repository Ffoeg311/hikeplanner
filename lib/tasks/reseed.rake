desc 'Raise an error unless development environment'
task :safety_check do
  raise 'You can only use this in dev!' if Rails.env.production?
end

namespace :db do
  desc 'Dropm create, migrate, and seed development database'
    task :reseed, [] => :environment do
      Rake::Task['safety_check'].invoke
      Rake::Task['db:drop:all'].invoke
      Rake::Task['db:create'].invoke
      Rake::Task['db:migrate'].invoke
      Rake::Task['db:seed'].invoke
      Rake::Task['db:test:prepare'].invoke
      Rake::Task['stats'].invoke
      puts "#{Rails.env} environment reseed complete!"
    end
end

desc 'run rspec'
task :rspec do
  system('rspec')
end


# frozen_string_literal: true

namespace :assets do
  desc "Remove 'node_modules' folder"
  task rm_node_modules: :environment do
    Rails.logger.info 'Removing node_modules folder'
    FileUtils.remove_dir('node_modules', true)
  end
end

if Rake::Task.task_defined?('assets:clean') && Rails.env.production?
  Rake::Task['assets:clean'].enhance do
    Rake::Task['assets:rm_node_modules'].invoke
  end
else
  Rake::Task.define_task('assets:clean' => 'assets:rm_node_modules')
end

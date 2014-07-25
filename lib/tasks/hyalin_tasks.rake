require File.expand_path('../../hyalin/tasks/install', __FILE__)

namespace :hyalin do
  desc "Install hyalin"
  task :install do
    installation = Hyalin::Tasks::Install.new
    installation.copy_initializer_file
    installation.copy_locales_files
  end

  desc "Copy only locale files (part of install, but useful for updates when only assets are needed)"
  task :copy_locales do
    Hyalin::Tasks::Install.new.copy_locales_files
  end

  desc "Copy only view files so you can customize them"
  task :copy_views do
    Hyalin::Tasks::Install.new.copy_view_files
  end
end

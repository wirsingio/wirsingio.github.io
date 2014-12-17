desc "Build and deploy project to github pages"
task :deploy do
  system "bundle exec middleman build"
  system "bundle exec middleman deploy"
  rm_rf "./build"
end

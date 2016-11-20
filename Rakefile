require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['tests/*']
  t.verbose = true
end

task default: :rubocop

task :rubocop do
  sh 'rubocop'
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['tests/*']
  t.verbose = true
end

task default: :make

task make: [:rubocop, :scss]

task :rubocop do
  sh 'rubocop'
end

task :scss do
  sh 'scss --sourcemap=none scss/bookmark-toolbox.scss bookmark-toolbox.css'
end

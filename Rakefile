task default: :test

task test: :audit
task :test do
  sh "PYTHONPATH=#{File.expand_path '.'}:$PYTHONPATH cucumber"
end

desc 'Publishes the Gem'
task :push do
  # TODO: Build the docker container and or the python-pip
end

desc 'Checks style'
task audit: :rubocop
task :audit do
  ignores = %w(D100 D101 D102 D103 E501 I201)

  FILES = FileList[%w(bin/compose_format compose_format/*.py setup.py)]
  sh "flake8 --ignore='#{ignores * ','}' #{FILES}"
  sh "pylint -E #{FILES}"
end

desc 'Checks ruby style'
task :rubocop do
  sh 'rubocop'
end

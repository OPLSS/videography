$LOAD_PATH.unshift('lib')
require 'oplss/bluebird'

dependencies = {
  development: {
    'rspec' => '~> 3.7',
    'rubocop' => '~> 0.58'
  },
  runtime: {
    'mixlib-shellout' => '~> 2.4'
  }
}

Gem::Specification.new do |spec|
  dependencies[:development].each do |name, version|
    spec.add_development_dependency(name, version)
  end
  dependencies[:runtime].each do |name, version|
    spec.add_runtime_dependency(name, version)
  end
  spec.authors = ['OPLSS A/V Lead']
  spec.description = File.read('README.md')
  spec.email = 'summerschool@cs.uoregon.edu'
  spec.files = Dir.glob('lib/**/*.rb')
  spec.homepage = 'https://www.cs.uoregon.edu/research/summerschool/summer18/'
  spec.licenses = %w[0BSD]
  spec.name = OPLSS::Bluebird::NAME
  spec.summary = 'Summary assemble OPLSS video files'
  spec.version = OPLSS::Bluebird::VERSION
end

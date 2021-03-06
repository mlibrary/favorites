
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "favorites/version"

Gem::Specification.new do |spec|
  spec.name          = "favorites"
  spec.version       = Favorites::VERSION
  spec.authors       = ["Albert Bertram"]
  spec.email         = ["bertrama@umich.edu"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{ Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/mlibrary/favorites'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://gems.www.lib.umich.edu"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'puma'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'slim'
  spec.add_dependency 'sinatra-activerecord'
end

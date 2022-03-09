# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-lat_lng"
  spec.version       = "1.16.0"
  spec.authors       = ["Quinn Daley"]
  spec.email         = ["quinn@fishpercolator.co.uk"]

  spec.summary       = %q{Administrate field for latitude/longitude}
  spec.description   = %q{Adds an Administrate::Field::LatLng for viewing & editing latitude/longitude fields on a map}
  spec.homepage      = "https://github.com/fishpercolator/administrate-field-lat_lng"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'administrate', '>= 0.3', '< 0.18'
  spec.add_dependency 'leaflet-rails', '~> 1.0'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "erubis"
end

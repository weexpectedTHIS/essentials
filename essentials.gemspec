Gem::Specification.new do |s|
  s.name            = 'essentials'
  s.version         = '0.0.5'
  s.date            = '2013-09-23'
  s.summary         = "Essential libraries for rails projects"
  s.description     = "Essential libraries for rails projects"
  s.authors         = ["Kyle Peyton"]
  s.email           = 'kylepeyton@gmail.com'
  s.files           = Dir["{app,lib}/**/*"]
  s.homepage        = 'http://rubygems.org/gems/essentials'
  s.license         = 'MIT'
  s.add_dependency  "railties", "~> 3.1"
end

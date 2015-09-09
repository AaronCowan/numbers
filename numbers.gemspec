Gem::Specification.new do |s|
  s.name            = 'numbers'
  s.version         = '1.0.0'
  s.summary         = 'Ruby gem for the use of the numbers API found here: https://www.numbersapi.com'
  s.authors         = ['Aaron Cowan']
  s.license         = 'MIT'
  s.description     = 'API wrapper for number facts api'
  s.email           = 'ac.aaroncowan@gmail.com'
  s.homepage        = 'https://github.com/AaronCowan/numbers'
  s.files           = Dir['lib/**/*.rb']
  
  s.add_dependency('faraday', '~> 0.9.0')
  s.add_dependency('json', '~> 1.8')
end

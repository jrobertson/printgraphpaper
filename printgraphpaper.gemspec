Gem::Specification.new do |s|
  s.name = 'printgraphpaper'
  s.version = '0.1.0'
  s.summary = 'Generates graph paper in HTML format suitable for printing.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/printgraphpaper.rb']
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.11')  
  s.signing_key = '../privatekeys/printgraphpaper.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/printgraphpaper'
end

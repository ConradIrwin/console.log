Gem::Specification.new do |s|
  s.name = "console.log"
  s.version = "0.2.0"
  s.platform = Gem::Platform::RUBY
  s.author = "Conrad Irwin"
  s.email = "conrad.irwin@gmail.com"
  s.license = "MIT"
  s.homepage = "http://github.com/ConradIrwin/console.log"
  s.summary = "Port of console.log to ruby"
  s.description = "Allows you to log to the console."
  s.files = `git ls-files`.split("\n")
  s.require_path = "lib"
  s.add_dependency 'lspace'
end

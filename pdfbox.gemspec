# frozen_string_literal: true

version = File.read(File.expand_path("lib/pdfbox/version.rb", __dir__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "pdfbox4r"
  s.version     = version
  s.summary     = "PDFBox wrapper for Ruby"
  s.description = "The Apache PDFBox® library is an open source Java tool for working with PDF documents."

  s.required_ruby_version = ">= 2.2.2"

  s.license = "MIT"

  s.author   = "Joe Kutner"
  s.email    = "jpkutner@gmail.com"

  s.files        = Dir["LICENSE", "README.rdoc", "lib/**/*"]
  s.require_path = "lib"

  s.extra_rdoc_files = %w(README.rdoc)
  s.rdoc_options.concat ["--main",  "README.rdoc"]
end

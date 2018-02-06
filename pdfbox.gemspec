# frozen_string_literal: true

require File.expand_path("../lib/pdfbox/version", __FILE__)

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "pdfbox4r"
  s.version     = PDFBox::VERSION
  s.summary     = "PDFBox wrapper for Ruby"
  s.description = "The Apache PDFBox® library is an open source Java tool for working with PDF documents."

  s.required_ruby_version = ">= 2.2.2"

  s.license = "MIT"

  s.author   = "Joe Kutner"
  s.email    = "jpkutner@gmail.com"

  s.files        = Dir["LICENSE", "README.md", "lib/**/*"]
  s.require_path = "lib"
end

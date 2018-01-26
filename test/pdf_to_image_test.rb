require "minitest/autorun"
require "tmpdir"
require 'pdfbox'

module PDFBox
  class PDFToImageTest < Minitest::Test

    def test_hello_pdf
      file = File.new(File.expand_path(File.dirname(__FILE__)) + "/fixtures/hello.pdf")
      content = File.open(file).read
      temp_file = Tempfile.new
      temp_file.write content
      temp_file.flush
      assert ::PDFBox::PDFToImage.pdf_to_image(temp_file)
    ensure
       temp_file.close if temp_file
       temp_file.unlink if temp_file
    end
  end
end

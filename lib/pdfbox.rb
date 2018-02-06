require 'pdfbox/pdf_to_image'
require 'pdfbox/version'

# Location of our PDF Box executable jar
module PDFBox
  $PDFBOX_JAR = File.expand_path(File.dirname(__FILE__)) + "/pdfbox.jar"
end

require 'pdfbox/railtie' if defined?(Rails) && defined?(ActiveStorage)

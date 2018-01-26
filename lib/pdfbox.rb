require 'fileutils'
Dir[File.expand_path(File.dirname(__FILE__)) + "/pdfbox/*.rb"].each{|f| require f}
# Location of our PDF Box executable jar
module PDFBox
  $PDFBOX_JAR = File.expand_path(File.dirname(__FILE__)) + "/pdfbox.jar"
end

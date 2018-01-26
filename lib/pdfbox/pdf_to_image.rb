module PDFBox
  class PDFToImage
    def self.pdf_to_image(input)
      system "java", "-jar", $PDFBOX_JAR, "PDFToImage", input.path, "-page", "1", "-imageType", "png", "-outputPrefix", input.path

      return "#{input.path}1.png"
    end
  end
end

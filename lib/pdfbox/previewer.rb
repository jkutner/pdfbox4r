require 'active_storage/previewer'

module PDFBox
  class Previewer < ActiveStorage::Previewer
    def self.accept?(blob)
      blob.content_type == "application/pdf"
    end

    def preview
      download_blob_to_tempfile do |input|
        png_path = PDFToImage.pdf_to_image(input)

        consume png_path do |output|
          yield io: output, filename: "#{blob.filename.base}.png", content_type: "image/png"
        end
      end
    end

    private
      def consume(path, &block)
        File.open(path, "rb", &block)
        File.delete(path)
      end
  end
end

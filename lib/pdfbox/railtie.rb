require 'pdfbox/previewer'

module PDFBox
  class Railtie < Rails::Railtie
    old_previewers = config.active_storage.previewers
    old_previewers.delete(ActiveStorage::Previewer::PDFPreviewer)
    old_previewers.unshift(PDFBox::Previewer)
  end
end

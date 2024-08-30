require 'wicked_pdf'

module Spree
  module AnalysisHelper

    def selected?(current_analysis, analysis)
      current_analysis.eql?(analysis)
    end

    def form_action(analysis, analysis_type)
      analysis ? admin_analysis_path(id: @report_name, type: analysis_type) : 'javascript:void(0)'
    end

    def page_selector_options
      [5, 10, 20, 30, 45, 60]
    end

    def pdf_logo(image_path = Spree::Config[:logo])
      wicked_pdf_image_tag image_path, class: 'logo'
    end
  end
end

require 'spree_core'
require 'spree_extension'
require 'spree_analysis/configuration'
require 'spree_analysis/engine'
require 'spree_analysis/version'

require_dependency 'spree/report/configuration'

module SpreeAnalysis
  class ReportConfig
    def self.configure
      yield configuration if block_given?
    end

    def self.configuration
      @config ||= Spree::Report::Configuration.new
    end
  end
end

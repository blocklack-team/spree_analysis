require 'spree_core'
require 'spree_extension'
require 'spree_analysis/configuration'
require 'spree_analysis/engine'
require 'spree_analysis/version'

module SpreeAnalysis
  class ReportConfig
    def self.configure
      yield configuration if block_given?
    end
  end
end

require 'administrate/field/base'
require 'leaflet-rails'
require 'rails'

module Administrate
  module Field
    class LatLng < Base
      class Engine < ::Rails::Engine
      end
      
      JS_URL  = "//cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"
      CSS_URL = "//cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.css"
      
      # True if the :lat option has been provided, or field is called :lat
      def lat?
        options.fetch(:lat, attribute == :lat)
      end
  
      # True if the :lng option has been provided, or field is called :lng
      def lng?
        options.fetch(:lng, attribute == :lng)
      end
      
      # Returns :lat or :lng depending on which type this is
      def which
        lat? ? :lat : :lng
      end
      
      # Returns the initial co-ordinates of blank maps (defaults to Leeds, UK)
      def initial
        options.fetch(:initial, [53.8003,-1.5519])
      end
      
      # Returns the initial zoom level for maps (defaults to 11)
      def zoom
        options.fetch(:zoom, 11)
      end
      
      def to_s
        data
      end
      
    end
  end
end

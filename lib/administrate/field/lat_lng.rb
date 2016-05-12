require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class LatLng < Base
      class Engine < ::Rails::Engine
      end
      
      JS_URL  = "http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"
      CSS_URL = "http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css"
      
      def lat?
        options.fetch(:lat, false)
      end
  
      def lng?
        options.fetch(:lng, false)
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

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'administrate/field/type'
require 'active_record'

class Example < ActiveRecord::Base
end

class One < Example
end

class Two < Example
end

class Three < Example
end
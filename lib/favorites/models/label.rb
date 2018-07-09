module Favorites
  module Models
    class Label < ActiveRecord::Base
      has_many :tag
    end
  end
end


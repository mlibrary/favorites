module Favorites
  module Models
    class Item < ActiveRecord::Base
      has_many :favorites
      has_many :tags
    end
  end
end


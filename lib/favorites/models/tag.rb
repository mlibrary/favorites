module Favorites
  module Models
    class Tag < ActiveRecord::Base
      belongs_to :item
      belongs_to :label
      belongs_to :user
    end
  end
end

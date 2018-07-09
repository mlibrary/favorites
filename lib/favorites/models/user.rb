module Favorites
  module Models
    class User < ActiveRecord::Base
      has_many :favorites
      has_many :tags
    end
  end
end

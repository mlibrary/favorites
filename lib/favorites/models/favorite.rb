module Favorites
  module Models
    class Favorite < ActiveRecord::Base
      belongs_to :item
      belongs_to :user

      def tag(label)
        Tag.new(item: item, user: user, label: label).save
      end

      def untag(label)
        Tag.where(item: item, user: user, label: label).delete
      end

      def tags
        Tag.where(item: item, user: user)
      end
    end
  end
end

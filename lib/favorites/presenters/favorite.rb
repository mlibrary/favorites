module Favorites
  module Presenters
    class Favorite
      attr_reader :uid, :datastore

      def initialize(favorite)
        @favorite = favorite
        @uid = favorite.uid
        @datastore = favorite.datastore
        @metadata = favorite.metadata && YAML.load(favorite.metadata) || {}
      end

      def tags
        Favorites::Presenter(@favorite.tags)
      end

      def include?(key)
        @metadata.include?(key)
      end

      def keys
        @metadata.keys
      end

      def [](key)
        @metadata[key]
      end
    end
  end
end
module Favorites
  module Presenters
    class Favorites
      include Enumerable
      def initialize(favorites)
        @favorites = favorites
      end

      def each(&block)
        @favorites.each do |favorite|
          block.call(Favorites::Presenter(favorite))
        end
      end
    end
  end
end

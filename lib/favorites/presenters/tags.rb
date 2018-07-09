module Favorites
  module Presenters
    class Tags
      include Enumerable

      def initialize(tags)
        @tags = tags
      end

      def each(&block)
        @tags.each do |tag|
          block.call(Favorites::Presenter(tag))
        end
      end
    end
  end
end
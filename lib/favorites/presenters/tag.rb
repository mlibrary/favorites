module Favorites
  module Presenters
    class Tag
      def initialize(tag)
        @tag = tag
      end

      def to_s
        @tag.label.label
      end
    end
  end
end
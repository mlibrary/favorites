module Favorites
  def self.Presenter(data)
    if ActiveRecord::Relation === data
      if data.model == Favorites::Models::Favorite
        Favorites::Presenters::Favorites.new(data)
      elsif data.model == Favorites::Models::Tag
        Favorites::Presenters::Tags.new(data)
      else
        data
      end
    elsif data.model == Favorites::Models::Favorite
      Favorites::Presenters::Favorite.new(data)
    elsif data.model == Favorites::Models::Tag
     Favorites::Presenters::Tag.new(data)
    else
      data
    end
  end
end

module Favorites
  class SinatraApp < Sinatra::Base
    set :views, File.expand_path('../views', __FILE__)
    set :public_dir, File.expand_path('../../../public', __FILE__)

    get '/' do
      @favorites = Favorites::Presenter(Favorites::Models::Favorite.all)
      slim :"favorite/list"
    end

    get '/users' do
      @users = Favorites::Models::User.all
      slim :"user/list"
    end

    get '/items' do
      @items = Favorites::Models::Item.all
      slim :"item/list"
    end
  end
end

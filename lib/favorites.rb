require 'sinatra'
require 'sinatra/activerecord'
require "favorites/version"
require 'favorites/models/label'
require 'favorites/models/user'
require 'favorites/models/item'
require 'favorites/models/favorite'
require 'favorites/models/tag'
require 'favorites/sinatra_app'
require 'favorites/presenter'
require 'favorites/presenters/favorites'
require 'favorites/presenters/tags'
require 'favorites/presenters/favorite'
require 'favorites/presenters/tag'

module Favorites
  class << self

    def list(user)
      if user.instance_of?(Favorites::Models::User)
        return Favorites::Models::Favorite.where(user: user)
      end
      Favorites::Models::Favorite.joins(:user).where('users.name' => user)
    end

    def create_user(username)
      Favorites::Models::User.new(name: username).tap(&:save)
    end

    def user(user)
      return user if user.instance_of?(Favorites::Models::User)
      Favorites::Models::User.where(name: user).first || create_user(user)
    end

    def create_item(datastore, uid, metadata)
      Favorites::Models::Item.new(
        datastore: datastore,
        uid: uid,
        metadata: metadata.to_yaml).tap(&:save)
    end

    def item(datastore, uid, metadata)
      Favorites::Models::Item.where(datastore: datastore, uid: uid).first || create_item(datastore, uid, metadata)
    end

    def create_favorite(user, item)
      Favorites::Model::Favorite.new(user: user, item: item)
    end

    def add(item, user)
      Favorites::Models::Favorite.where(user: user, item: item) || create_favorite(user, item)
    end

    def remove(user, item)
      Favorites::Models::Favorite.where(user: user, item: item).each(&:delete)
    end

    def tag(item, label, user)
      Favorites::Models::Favorite.where(user: user, item: item).tag(label)
    end

    def untag(item, label, user)
      Favorites::Models::Favorite.where(user: user, item: item).untag(label)
    end
  end
end

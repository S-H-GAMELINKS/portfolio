class CategoryController < ApplicationController

  before_action :set_select_collections, only: [:edit, :update, :new, :create]

  private
    def set_select_collections
      @categories = Category.all
    end

end

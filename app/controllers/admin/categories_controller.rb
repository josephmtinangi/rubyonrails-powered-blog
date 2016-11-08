class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end

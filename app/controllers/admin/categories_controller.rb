class Admin::CategoriesController < Admin::ApplicationController
  def index
    if params[:search]
      @categories = Category.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    else
      @categories = Category.all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    end
  end

  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category added successfully.'
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:notice] = 'Category updated.'
      redirect_to admin_categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'Category removed.'
    redirect_to admin_categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end

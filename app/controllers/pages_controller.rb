class PagesController < ApplicationController

  def home
    redirect_to weddings_path
  end

  def admin_photos
    @items = Photo.all.paginate(:page => params[:page], :per_page => 10)
  end

  def admin_pages
    @items = Subpage.all.paginate(:page => params[:page], :per_page => 10)
  end

  def admin_blog
    @items = Blog.all.paginate(:page => params[:page], :per_page => 10)
  end

  def blog
    @blogs = Blog.all
  end

  def about
    @photos = Photo.where(category: 'about')
  end

  def contact
    @photos = Photo.where(category: 'contact')
  end

  def album
    @subpages = Subpage.where(category: 'album')
  end

  def weddings
    @subpages = Subpage.where(category: 'weddings')
  end

  def lifestyle
    @subpages = Subpage.where(category: 'lifestyle')
  end

  private
  
  def sort_column
    Photo.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  
end
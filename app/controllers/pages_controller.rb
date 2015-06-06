class PagesController < ApplicationController

  def home
    redirect_to weddings_path
  end

  def admin_photos
    if params[:search]
      @items = Photo.all.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    else
      @items = Photo.all.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def admin_pages
    if params[:search]
      @items = Subpage.all.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    else
      @items = Subpage.all.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def admin_blog
    if params[:search]
      @items = Photo.all.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    else
      @items = Blog.all.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def blog
    @blogs = Blog.all
  end

  def about
    # photos images to feed about root
    @photos = Photo.where(category: 'about')
  end

  def contact
    # subpage nav images to feed contact page root
    @photos = Photo.where(category: 'contract')
  end

  def album
    # subpage nav images to feed album page root
    @subpages = Subpage.where(category: 'album')
  end

  def weddings
    # subpage nav images to feed wedding page root
    @subpages = Subpage.where(category: 'weddings')
  end

  def lifestyle
    # subpage nav images to feed travel page root
    @subpages = Subpage.where(category: 'lifestyle')
  end

end

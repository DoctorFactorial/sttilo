class PagesController < ApplicationController

  def home
    redirect_to weddings_path
  end

  def admin_photos
    @items = Photo.all
  end

  def admin_pages
    @items = Subpage.all
  end

  def admin_blog
    @items = Blog.all
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
end

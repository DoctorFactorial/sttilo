class PagesController < ApplicationController

  def home
    redirect_to weddings_path
    @subpages = Subpage.where(category: 'home page')
  end

  def admin_photos
    @items = Photo.all
  end

  def admin_pages
    @items = Subpage.all
  end

  def admin_blog
    @items = Subpage.where(category: 'blog')
  end

  def blog
    @subpages = Subpage.where(category: 'blog')
  end

  def about
    @photos = Photo.where(category: 'about')
  end

  def contact
    @photos = Subpage.where(category: 'contract')
  end

  def album
    @subpages = Subpage.where(category: 'album')
  end

  def weddings
    @subpages = Subpage.where(category: 'weddings')
  end

  def travel
    @subpages = Subpage.where(category: 'travel')
  end

  def communion
    @subpages = Subpage.where(category: 'communion')
  end
end

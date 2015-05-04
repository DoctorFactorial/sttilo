class PagesController < ApplicationController

  def home
    if current_user && current_user.admin?
      redirect_to dashboard_path
    end
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
    # photo images to feed blog root 
    @subpages = Subpage.where(category: 'blog')
  end

  def about
    # photos images to feed about root
    @photos = Photo.where(category: 'about')
  end

  def contact
    # subpage nav images to feed contact page root
    @photos = Subpage.where(category: 'contract')
  end

  def album
    # subpage nav images to feed album page root
    @subpages = Subpage.where(category: 'album')
  end

  def weddings
    # subpage nav images to feed wedding page root
    @subpages = Subpage.where(category: 'weddings')
  end

  def travel
    # subpage nav images to feed travel page root
    @subpages = Subpage.where(category: 'travel')
  end

  def communion
    # subpage nav images to feed communion page root
    @subpages = Subpage.where(category: 'communion')
  end
end

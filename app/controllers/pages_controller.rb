class PagesController < ApplicationController

  def home
    if current_user && current_user.admin?
      redirect_to dashboard_path
    end
    @subpages = Subpage.where(category: 'home page')
  end

  def dashboard
    authorize! :manage, @photo
    @photos = Photo.all
    @subpages = Subpage.all
  end

  def blog
    @photos = Photo.where(category: 'blog')
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

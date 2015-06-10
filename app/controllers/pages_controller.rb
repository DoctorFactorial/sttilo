class PagesController < ApplicationController

  def home
    if current_user && current_user.admin?
      redirect_to dashboard_path
    end
    @photos = Photo.where(category: 'Home Page')
  end

  def dashboard
    authorize! :manage, @photo
    @photos = Photo.all
  end

  def blog
    @photos = Photo.where(category: 'BLOG')
  end

  def about
    @photos = Photo.where(category: 'ABOUT')
  end

  def contact
    @photos = Photo.where(category: 'CONTACT')
  end

  def album
    @photos = Photo.where(category: 'ALBUM')
  end

  def weddings
    @photos = Photo.where(category: 'WEDDINGS')
  end

  def travel
    @photos = Photo.where(category: 'TRAVEL')
  end

  def communion
    @photos = Photo.where(category: 'COMMUNION')
  end
end

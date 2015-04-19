class PagesController < ApplicationController
  def home
    if current_user
      redirect_to album_path
    end
  end

  def blog
  end

  def about
  end

  def contact
  end

  def album
  end

  def weddings
  end

  def travel
  end

  def communion
  end
end

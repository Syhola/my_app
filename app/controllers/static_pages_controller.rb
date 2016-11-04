class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def dash
    @microposts = Micropost.all
    @users      = User.all
  end
  
  def about
  end
  
  def contact
  end

end
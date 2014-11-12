class StaticPagesController < ApplicationController
  def home
  	@micropost = current_user.microposts.build if signed_in?
  	@feed_items = current_user.feed.paginate(page: params[:page])
    logger.info "In StaticPagesController"
    logger.info @feed_items.inspect
  end

  def help
  end

  def about 
  end

  def contact
  end
end

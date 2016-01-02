class LinksController < ApplicationController
  before_action 
  def index
  	@public_links = Link.where(public: true)
  	@shared_links = []
  	unless current_user.nil?
  		@shared_links = current_user.links.where(public: false)
  	end	
  end

  def create
    links = params[:link]
  	link = current_user.created_links.create(url: links[:url], public: links[:public])
    unless link.public
      link.user_ids = (current_user.friend_ids + [current_user.id] +  a.inverse_friend_ids).uniq
    end
    redirect_to :links
  end
end

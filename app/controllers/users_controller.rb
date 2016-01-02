class UsersController < ApplicationController

	def show
		@public_links = User.find_by_username(params[:username]).created_links.where(public: true)
		@shared_links = []
		render "links/index"
	end

	def all_friends
		@friends = (current_user.friends + current_user.inverse_friends).uniq
	end
end

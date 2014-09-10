class MatchersController < ApplicationController
	def index
    @target_users = []
    # favourited users associated with current user when mutually liked
    @favorites = Favorite.where(fav_initiator: current_user, liked_back: true)
    @favorites += Favorite.where(fav_receiver: current_user, liked_back: true)
  end

  def show
    # Also shows all messages between matched users
    @favorite = Favorite.find(params[:id])
    @messages = Message.where(favorite: @favorite).sort()
    # gets the user who is not current user in the match
    @mylove = @favorite.other_user(current_user)
    @match = Matcher.new(current_user, @mylove)

    # Marks messages as read or unread so they get notifications in 
    # the nav bar 
    @messages.each do |msg|
      if msg.user != current_user
        msg.read = true
        msg.save
      end
    end

  end
end

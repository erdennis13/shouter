module UsersHelper
	def follow_button user
		if current_user.following? user
			button_to "Unfollow", user_follow_path(user), method: :delete, class: "btn btn-primary btn-sm"
		else	
			button_to 'Follow', user_follow_path(user), class: "btn btn-primary btn-sm"
		end
	end
end
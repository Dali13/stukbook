module UsersHelper

	def action_buttons(user)
		case current_user.friendship_status(user) when "friends"
			link_to "Cancel friendship", friendship_path(current_user.friendship_relation(user)), method: :delete
			when "pending"
			link_to "Cancel request", friendship_path(current_user.friendship_relation(user)), method: :delete
			when "requested"
			link_to "Accept request", accept_friendship_path(current_user.friendship_relation(user)), method: :put
			when "not friends"
		  link_to "Add as friend", friendships_path(user_id: user.id), method: :post
		end
	end

end

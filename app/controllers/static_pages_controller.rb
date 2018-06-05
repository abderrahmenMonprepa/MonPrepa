class StaticPagesController < ApplicationController


before_action :authenticate_user! , :except => :home
helper :content

	def home
		if user_signed_in?
			@countdown_date = current_user.created_at.strftime(" %b %d, %Y %H:%M:%S")
			@now = Time.now.to_time.to_i
			@days = ( (current_user.created_at.to_time.to_i + 432000) - Time.now.to_time.to_i )
			@mm, @ss = @days.divmod(60)            #=> [4515, 21]
			@hh, @mm = @mm.divmod(60)           #=> [75, 15]
			@dd, @hh = @hh.divmod(24) 
			@value = "%d days, %d hours, %d minutes and %d seconds" % [@dd, @hh, @mm, @ss]
		end


	end

	def contact
		
	end

	# Get the remaining trial days for current user
	def remaining_days
		# if user_signed_in?
		#  ( (current_user.created_at.to_time.to_i + 432000) - Time.now.to_time.to_i )
		# end
	end

	def documents_list
		
	end

	def index
		
	end

   

end
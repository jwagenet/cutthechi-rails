module ApplicationHelper

	# Return page title
	def full_title(page_title)
		base_title = "Pacific Cut the Chi"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	def show_page(page)
		if page
			return 1
		else
			return 0
		end
	end

	def date_check
		if Time.now.in_time_zone("Pacific Time (US & Canada)") < Time.new(2014,9,15).in_time_zone("Pacific Time (US & Canada)")
			return 0
		elsif Time.now.in_time_zone("Pacific Time (US & Canada)") > Time.new(2014,9,19,12).in_time_zone("Pacific Time (US & Canada)")
			return 1
		else
			return 2
		end
	end

end

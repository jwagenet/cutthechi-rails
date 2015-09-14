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
		if Time.now< Time.new(2015,9,14,7)
			return 0
		elsif Time.now> Time.new(2015,9,18,1)
			return 1
		else
			return 2
		end
	end

end

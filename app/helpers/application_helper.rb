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
	
end

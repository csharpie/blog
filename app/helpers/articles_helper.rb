module ArticlesHelper
	def publication_status(article)
		publication_time = article.published_at.to_s(:long_ordinal)

		if article.published
			if article.published_at <= Time.now
				"Published on #{publication_time}"
			else
				"Scheduled for #{publication_time}"
			end
		else
			"This article is still a draft"
		end
	end
end

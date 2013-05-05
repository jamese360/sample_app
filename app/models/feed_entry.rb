class FeedEntry < ActiveRecord::Base
attr_accessible :guid, :name, :published_at, :summary, :url, :title

	def self.update_feeds(feed_urls)
		feeds = Feedzirra::Feed.fetch_and_parse(feed_urls)
		feeds.each do |feed_url, feed|
			feed.entries.each do |entry|
				unless exists? :guid => entry.id
					create!(
						:title => feed.title,
						:name => entry.title,
						:summary => entry.summary,
						:url => entry.url,
						:published_at => entry.published,
						:guid => entry.id
					)
				end
			end
		end
	end
end
class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :message => "is a required field"
	validates_uniqueness_of :body

  # Returns published articles excluding scheduled ones
  scope :published, -> { where('published = ? AND published_at <= ?', true, Time.now.utc) }

  # Find all drafts and scheduled posts
  scope :unpublished, -> { where('published = ? OR published_at > ?', false, Time.now.utc) }

end

class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :message => "is a required field"
	validates_uniqueness_of :body
end

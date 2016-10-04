class Article < ActiveRecord::Base
	def self.search(search)
	  if search
	    self.where('title LIKE ? OR body LIKE ? ', "%#{search}%", "%#{search}%")
	  else
	    self.all
	  end
	end
end

class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true
  def self.search(search)
    if search
      self.where('title LIKE ? OR body LIKE ? ', "%#{search}%", "%#{search}%")
    else
      self.all
    end
  end
end

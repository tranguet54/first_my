class Post < ActiveRecord::Base
  attr_accessible :content, :name, :titile
  #attr_accessible :content, :name, :title
 
  validates :name,  :presence => true
  validates :titile, :presence => true
  validates :content, :length => { :minimum => 5 }
end

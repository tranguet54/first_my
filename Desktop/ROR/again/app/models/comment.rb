class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter, :post
end

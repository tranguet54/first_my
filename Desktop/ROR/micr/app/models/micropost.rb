class Micropost < ActiveRecord::Base
  attr_accessible :content, :text, :usr_id
end

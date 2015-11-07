class Comment < ActiveRecord::Base
  has_one :order
end

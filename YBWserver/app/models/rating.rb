class Rating < ActiveRecord::Base
  has_one :user
end

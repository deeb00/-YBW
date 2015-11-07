class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  belongs_to :importance
  belongs_to :comment
  belongs_to :platform
end

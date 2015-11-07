class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  belongs_to :importance
  belongs_to :comment
  belongs_to :platform
  has_one :task

  def as_json(options={})
    super(:only => [:user,:problem,:importance,:comment,:platform],
          :include => {
              :user => {:only => [:name,:phone]},
              :problem => {:only => [:value]},
              :importance => {:only => [:value]},
              :comment => {:only => [:value]},
              :platform => {:only => [:value]},
          }
    )
  end
end

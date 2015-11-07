class User < ActiveRecord::Base
  belongs_to :rating
  has_one :order
  has_one :task

  def as_json(options={})
    super(:only => [:name,:phone,:rating],
          :include => {
              :rating => {:only => [:value]},
          }
    )
  end
end

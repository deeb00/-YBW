class User < ActiveRecord::Base
  belongs_to :rating
  has_one :order

  def as_json(options={})
    super(:only => [:name,:phone,:rating],
          :include => {
              :rating => {:only => [:value]},
          }
    )
  end
end

class Task < ActiveRecord::Base
  belongs_to :order
  belongs_to :user

  def as_json(options={})
    super(:only => [:order,:user,:price,:time],
          :include => {
              :user => {
                  :only => [:name,:phone,:rating],
                  :include => {
                      :rating => {
                          :only => [:value]
                      }
                  }
              },
              #=====
              :order => {
                  :only => [:user,:problem,:importance,:platform,:comment],
                  :include => {
                      :user => {
                          :only => [:name,:phone,:rating],
                          :include => {
                              :rating => {
                                  :only => [:value]
                              }
                          }
                      },
                      :problem => {
                          :only => [:value]
                      },
                      :importance => {
                          :only => [:value]
                      },
                      :platform => {
                          :only => [:value]
                      },
                      :comment => {
                          :only => [:value]
                      }

                  }
              }
          }
    )
  end
end

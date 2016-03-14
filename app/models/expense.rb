class Expense < ActiveRecord::Base
  belongs_to :machine

  def to_s
    '$' + self.cost/100.0
  end
end

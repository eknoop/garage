class Machine < ActiveRecord::Base
  belongs_to :user
  has_many :expenses

  attr_accessor :purchase_price
  
  def cost
    expenses.map(&:cost).inject(:+)
  end

  def to_s
    [year, make, model].join(' ')
  end
end

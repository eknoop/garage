class AddMachineIdToExpenses < ActiveRecord::Migration
  def change
    add_reference :expenses, :machine, index: true, foreign_key: true
  end
end

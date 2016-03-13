class AddUserIdToMachines < ActiveRecord::Migration
  def change
    add_reference :machines, :user
  end
end

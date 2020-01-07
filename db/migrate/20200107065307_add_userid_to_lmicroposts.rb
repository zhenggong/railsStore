class AddUseridToLmicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :lmicroposts, :userid, :integer
  end
end

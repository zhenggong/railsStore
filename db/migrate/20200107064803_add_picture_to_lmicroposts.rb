class AddPictureToLmicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :lmicroposts, :picture, :text
  end
end

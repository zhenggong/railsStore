class CreateLmicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :lmicroposts do |t|
      t.text :link
      t.datetime :starttime
      t.text :title

      t.timestamps
    end
  end
end

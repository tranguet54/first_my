class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.string :text
      t.integer :usr_id

      t.timestamps
    end
  end
end

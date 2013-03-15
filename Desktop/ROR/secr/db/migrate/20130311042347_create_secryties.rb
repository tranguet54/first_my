class CreateSecryties < ActiveRecord::Migration
  def change
    create_table :secryties do |t|
      t.string :name
      t.string :cmt

      t.timestamps
    end
  end
end

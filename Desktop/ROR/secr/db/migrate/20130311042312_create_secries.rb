class CreateSecries < ActiveRecord::Migration
  def change
    create_table :secries do |t|
      t.string :name
      t.int :tuoi

      t.timestamps
    end
  end
end

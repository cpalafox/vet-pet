class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :age_unit
      t.decimal :weight
      t.string :weight_unit
      t.string :breed
      t.string :stage
      t.string :size

      t.timestamps
    end
  end
end

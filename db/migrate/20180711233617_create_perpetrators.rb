class CreatePerpetrators < ActiveRecord::Migration[5.2]
  def change
    create_table :perpetrators do |t|
      t.integer :age
      t.text :gender
      t.text :relationship
      t.boolean :live_together

      t.timestamps
    end
  end
end

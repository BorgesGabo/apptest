class CreateAggressionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :aggression_details do |t|
      t.date :aggression_date
      t.time :aggression_time
      t.text :aggression_mechanism
      t.text :aggression_scene
      t.text :aggression_file

      t.timestamps
    end
  end
end

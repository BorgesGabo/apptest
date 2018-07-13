class CreateTypeOfAggressions < ActiveRecord::Migration[5.2]
  def change
    create_table :type_of_aggressions do |t|
      t.text :non_sexual_violence
      t.text :sexual_violence

      t.timestamps
    end
  end
end

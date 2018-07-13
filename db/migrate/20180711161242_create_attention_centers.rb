class CreateAttentionCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :attention_centers do |t|
      t.text :code
      t.text :name
      t.float :latitude
      t.float :longitude
      t.text :phone_number
      t.text :picture
      t.text :schedule
      t.text :address

      t.timestamps
    end
  end
end

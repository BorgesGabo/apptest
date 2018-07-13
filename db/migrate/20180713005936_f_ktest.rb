class FKtest < ActiveRecord::Migration[5.2]
  def change
    
add_foreign_key :categories, :expenses
  end
end

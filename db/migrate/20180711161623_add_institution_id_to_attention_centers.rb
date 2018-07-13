class AddInstitutionIdToAttentionCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :attention_centers, :institution_id, :integer
  end
end

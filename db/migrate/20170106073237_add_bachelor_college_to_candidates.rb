class AddBachelorCollegeToCandidates < ActiveRecord::Migration[5.0]
  def change
    
    add_column :candidates, :bachelor_college, :string
  end
end

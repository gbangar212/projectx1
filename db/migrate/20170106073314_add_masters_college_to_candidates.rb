class AddMastersCollegeToCandidates < ActiveRecord::Migration[5.0]
  def change
    
    add_column :candidates, :masters_college, :string
  end
end

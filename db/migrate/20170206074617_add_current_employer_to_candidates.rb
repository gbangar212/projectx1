class AddCurrentEmployerToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :current_employer, :string
  end
end

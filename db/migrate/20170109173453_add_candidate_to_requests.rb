class AddCandidateToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :candidate, :string
  end
end

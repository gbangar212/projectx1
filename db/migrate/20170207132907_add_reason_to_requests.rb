class AddReasonToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :reason, :string
  end
end

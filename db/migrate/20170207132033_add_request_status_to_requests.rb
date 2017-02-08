class AddRequestStatusToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :request_status, :string
  end
end

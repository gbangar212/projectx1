class AddInterviewerToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :interviewer, :string
  end
end

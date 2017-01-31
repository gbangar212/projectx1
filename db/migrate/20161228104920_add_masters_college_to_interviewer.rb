class AddMastersCollegeToInterviewer < ActiveRecord::Migration[5.0]
  def change
    add_column :interviewers, :masters_college, :string
  end
end

class AddBachelorCollegeToInterviewer < ActiveRecord::Migration[5.0]
  def change
    add_column :interviewers, :bachelor_college, :string
  end
end

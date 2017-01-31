class AddNoInterviewsToInterviewer < ActiveRecord::Migration[5.0]
  def change
    add_column :interviewers, :no_interviews, :integer
  end
end

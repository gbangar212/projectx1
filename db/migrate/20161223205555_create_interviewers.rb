class CreateInterviewers < ActiveRecord::Migration[5.0]
  def change
    create_table :interviewers do |t|
      t.string :email_id
      t.string :password_digest
      t.string :name
      t.text :bio
      t.string :skill_1
      t.string :skill_2
      t.string :skill_3
      t.string :skill_4
      t.string :skill_5
      t.string :tel_no
      t.string :skype_id
      t.string :linkedin_url
      t.string :voice_call_y
      t.float :voice_call_r
      t.string :video_call_y
      t.float :video_call_r
      t.string :meeting_y
      t.float :meeting_r
      t.string :currency
      t.string :current_emp
      t.string :prev_emp_1
      t.string :prev_emp_2
      t.integer :rating
      t.integer :no_of_rating
      t.float :money_earner
      t.float :money_disbursed

      t.timestamps
    end
  end
end

class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :email_id
      t.string :password_digest
      t.string :name
      t.string :tel_no
      t.string :skype_id
      t.string :linkedin_url

      t.timestamps
    end
  end
end

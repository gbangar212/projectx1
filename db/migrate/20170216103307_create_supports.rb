class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :candidate
      t.string :interviewer
      t.string :request
      t.string :request_type
      t.text :message

      t.timestamps
    end
  end
end

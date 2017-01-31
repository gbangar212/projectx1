class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :request_id
      t.string :from_id
      t.string :to_id
      t.date :date
      t.time :start_time
      t.string :mode

      t.timestamps
    end
  end
end

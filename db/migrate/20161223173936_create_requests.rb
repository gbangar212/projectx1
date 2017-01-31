class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.date :date_1
      t.time :time_1
      t.date :date_2
      t.time :time_2
      t.date :date_3
      t.time :time_3
      t.date :date_4
      t.time :time_4
      t.date :date_5
      t.time :time_5
      t.string :mode
      t.string :approved
      t.date :approved_date
      t.time :approved_time

      t.timestamps
    end
  end
end

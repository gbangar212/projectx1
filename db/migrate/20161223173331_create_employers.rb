class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :type
      t.string :short_name

      t.timestamps
    end
  end
end

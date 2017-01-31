class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.text :currency
      t.text :short

      t.timestamps
    end
  end
end

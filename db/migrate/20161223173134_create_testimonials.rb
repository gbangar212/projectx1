class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.text :text
      t.string :from_id
      t.string :to_id

      t.timestamps
    end
  end
end

class AddStatusToSupports < ActiveRecord::Migration[5.0]
  def change
    add_column :supports, :status, :string
  end
end

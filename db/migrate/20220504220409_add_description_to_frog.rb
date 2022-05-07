class AddDescriptionToFrog < ActiveRecord::Migration[7.0]
  def change
    add_column :frogs, :description, :string
  end
end

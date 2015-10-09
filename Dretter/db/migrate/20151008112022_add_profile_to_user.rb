class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :string
    add_column :users, :icon_image, :text
    add_column :users, :header_image, :text
  end
end

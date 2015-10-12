class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string   :name
      t.text     :image_url
      t.text     :key, :unique => true
      t.integer  :user_id
      t.timestamps null: false
    end
  end
end

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.text :image_url
      t.timestamps null: false
    end
  end
end

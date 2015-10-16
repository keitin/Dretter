class AddFakeUserId < ActiveRecord::Migration
  def change
    add_column :tweets, :fake_user_id, :integer
  end
end

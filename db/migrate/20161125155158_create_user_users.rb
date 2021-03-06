class CreateUserUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_users do |t|
	t.integer :follower_id
	t.integer :followed_id
      t.timestamps
    end
    add_index :user_users, :follower_id
    add_index :user_users, :followed_id
    add_index :user_users, [:follower_id, :followed_id], unique: true
  end
end

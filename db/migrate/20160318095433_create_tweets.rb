class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.integer :twit_user_id
      t.string :title
      t.string :description
      t.string :twit_user_name
      t.string :twit_user_screen_name
      t.string :twit_url
      t.timestamps null: false
    end
  end
end

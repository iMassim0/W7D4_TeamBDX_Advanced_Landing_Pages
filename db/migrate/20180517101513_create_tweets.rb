class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :tweet_id, null: false
      t.string :creator, null: false
      t.datetime :date
      t.boolean :reply, default: false

      t.timestamps
    end
      add_index :tweets, :tweet_id, unique: true
  end
end

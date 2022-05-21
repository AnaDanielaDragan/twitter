class CreateTweetContents < ActiveRecord::Migration[7.0]
  def change
    create_table :tweet_contents do |t|
      t.string :message

      t.timestamps
    end
  end
end

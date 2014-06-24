class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.json :content
    end
  end
end

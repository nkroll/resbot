class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.string :city
      t.string :email
      t.boolean :emailshow
      t.string :headshot_url
      t.string :phone
      t.boolean :facebookshow
      t.string :facebook_url
      t.boolean :twittershow
      t.string :twitter_url
      t.boolean :linkedinshow
      t.string :linkedin_url

      t.timestamps
    end
  end
end

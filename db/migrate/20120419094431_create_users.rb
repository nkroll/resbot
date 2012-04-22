class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :tagline
      t.text :description, :default => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
      t.string :city
      t.string :email
      t.string :website
      t.boolean :emailshow
      t.string :picture, :default => "http://www.cityofaltadena.us/empty_profile.jpg"
      t.string :phone
      t.string :facebook
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end

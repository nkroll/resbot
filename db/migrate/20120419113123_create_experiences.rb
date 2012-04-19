class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.string :title
      t.string :company
      t.string :company_url
      t.string :date
      t.integer :list_order

      t.timestamps
    end
  end
end

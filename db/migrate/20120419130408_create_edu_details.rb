class CreateEduDetails < ActiveRecord::Migration
  def change
    create_table :edu_details do |t|
      t.integer :education_id
      t.string :detail
      t.integer :detail_order

      t.timestamps
    end
  end
end

class CreateExpDetails < ActiveRecord::Migration
  def change
    create_table :exp_details do |t|
      t.integer :experience_id
      t.string :detail
      t.integer :detail_order

      t.timestamps
    end
  end
end

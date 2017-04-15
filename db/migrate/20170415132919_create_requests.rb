class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :status
      t.references :item, foreign_key: true
      t.integer :owner_id
      t.integer :borrower_id

      t.timestamps
    end
  end
end

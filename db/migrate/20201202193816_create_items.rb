class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :res_id
      t.string :name
      t.integer :price
      t.text :detail

      t.timestamps
    end
  end
end

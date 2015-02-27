class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.text :link
      t.text :notes
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

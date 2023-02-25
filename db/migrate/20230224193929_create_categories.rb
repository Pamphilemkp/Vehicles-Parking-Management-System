class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, id: false, primary_key: :category_id do |t|
      t.primary_key :category_id
      t.string :name

      t.timestamps
    end
  end
end

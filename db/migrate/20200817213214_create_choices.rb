class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.boolean :preference
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end

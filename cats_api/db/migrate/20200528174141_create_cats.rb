class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

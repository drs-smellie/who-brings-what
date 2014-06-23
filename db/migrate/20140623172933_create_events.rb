class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name,         null: false
      t.datetime :date,       null: false
      t.text :description
      t.references :user,     index: true

      t.timestamps
    end
  end
end

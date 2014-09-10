class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :body
      t.string :type
      t.references :list, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name, null: false, default: ""
      t.string :author, null: false, default: ""
      t.references :category, index: true, foreign_key: true
      t.jsonb :observations, null: false, default: "{}"

      t.timestamps null: false
    end
  end
end

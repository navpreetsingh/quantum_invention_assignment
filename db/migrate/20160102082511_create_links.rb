class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.boolean :public, null: false, default: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

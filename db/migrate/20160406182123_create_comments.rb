class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentor
      t.text :body
      t.references :supplier
      t.timestamps null: false
    end
  end
end

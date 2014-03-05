class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :email
      t.text :body
      t.integer :like_number
      t.references :post, index: true

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.integer :postcode
      t.string :useradr
      t.timestamps null: false
    end
  end
end

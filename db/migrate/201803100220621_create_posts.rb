class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :name
      t.text    :text
      t.string  :tag
      t.string  :address
      t.integer :phonenumber
      t.text    :URL
      t.references :area, foreign_key: true
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end

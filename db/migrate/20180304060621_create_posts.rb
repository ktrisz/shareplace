class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :name
      t.text    :text
      t.string  :city
      t.string  :area
      t.string  :address
      t.integer :phonenumber
      t.text    :URL
      t.timestamps
    end
  end
end

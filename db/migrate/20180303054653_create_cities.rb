class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string     :name
      t.text       :person
      t.string     :email
      t.string     :phone
    end
  end
end

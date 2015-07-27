class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :language_id
      t.string :wish_lang
      t.string :country
      t.string :city
      t.string :interest
      t.string :weixin
      t.string :skype

      t.timestamps
    end
  end
end

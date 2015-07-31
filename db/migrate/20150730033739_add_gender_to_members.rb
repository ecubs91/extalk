class AddGenderToMembers < ActiveRecord::Migration
  def change
    add_column :members, :gender_id, :integer
  end
end

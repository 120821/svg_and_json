class AddUserNameIdToUserNames < ActiveRecord::Migration
  def change
    add_column :user_names, :user_name_id, :integer
  end
end

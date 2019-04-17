# Migration
class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, limit: 50
    add_column :users, :is_admin, :boolean
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

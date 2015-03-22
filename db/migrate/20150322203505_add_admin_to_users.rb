class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
  end

  class AddAdminToUsers < ActiveRecord::Migration
    def self.up
      add_column :users, :admin, :boolean, :default => false
    end

    def self.down
      remove_column :users, :admin
    end
  end
end

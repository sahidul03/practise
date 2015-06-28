class AddAlbumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :albums, :string, array: true
  end
end

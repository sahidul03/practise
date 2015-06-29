class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :single_photo

      t.references :user, index: true

      t.timestamps null: false
    end
  end
end

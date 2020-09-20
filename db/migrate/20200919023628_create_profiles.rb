class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.string :address
      t.boolean :is_enable
      t.string :thumbnail
      t.string :header_image
      t.string :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end

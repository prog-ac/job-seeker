class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.string :address
      t.boolean :is_enable
      t.string :thumbnail
      t.string :header_image
      t.string :introduction
      
      t.timestamps
    end
  end
end

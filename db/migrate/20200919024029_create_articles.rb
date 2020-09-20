class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.string :text
      t.string :url
      t.string :type
      t.date :date
      t.integer :user_id
      t.integer :profile_id

      t.timestamps
    end
  end
end

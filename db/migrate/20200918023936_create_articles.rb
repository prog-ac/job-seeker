class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.string :text
      t.string :url
      t.string :type
      t.date :date
      t.timestamps
    end
  end
end

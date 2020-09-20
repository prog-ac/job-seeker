class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.date :date
      t.string :text
      t.integer :user_id
      t.integer :profile_id

      t.timestamps
    end
  end
end

class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.date :date
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end
end

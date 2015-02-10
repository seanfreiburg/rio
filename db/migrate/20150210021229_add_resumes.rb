class AddResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.text :description
      t.text :url
      t.integer :user_id
      t.index :user_id
      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :class_id
      t.string :instructor
      t.text :comment
      t.string :semester
      t.integer :year

      t.timestamps null: false
    end
  end
end

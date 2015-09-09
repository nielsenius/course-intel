class CreateCollegeClasses < ActiveRecord::Migration
  def change
    create_table :college_classes do |t|
      t.string :name
      t.integer :department
      t.integer :number
      t.integer :units

      t.timestamps null: false
    end
  end
end

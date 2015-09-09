class FixColumnName < ActiveRecord::Migration
  def change
  	 rename_column(:posts,:class_id,:college_class_id)
  end
end

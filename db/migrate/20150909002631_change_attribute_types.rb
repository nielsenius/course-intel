class ChangeAttributeTypes < ActiveRecord::Migration
  def change
  	change_column(:college_classes,:department,:string)
  	change_column(:college_classes,:number,:string)
  end
end

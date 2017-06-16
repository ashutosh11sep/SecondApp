class RenameLoactionToLocation < ActiveRecord::Migration[5.1]
  def change
 
rename_column :products, :loaction, :location
  end
end

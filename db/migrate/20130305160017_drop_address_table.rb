class DropAddressTable < ActiveRecord::Migration
  def up
   drop_table :addresses
  end


  def down
  end
end

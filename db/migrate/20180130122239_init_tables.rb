class InitTables < ActiveRecord::Migration
  def self.up
  	create_table :auth_keys do |t|
  		t.string :value
  		t.string :result
  		t.string :note
  		t.timestamps
  	end
  end
  def self.down
  end
end

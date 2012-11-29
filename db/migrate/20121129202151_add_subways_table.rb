<<<<<<< HEAD
class AddSubwaysTable < ActiveRecord::Migration
  def change
    create_table :entrances do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :line
      t.timestamps
    end
  end
end
=======
class AddSubwaysTable < ActiveRecord::Migration
  def change
    create_table :entrances do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :line
      t.timestamps
  end
	end
end
>>>>>>> 6276123023d526adc86322152ddb67bd51b085fe

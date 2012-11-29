class AddEntrancesLinesTable < ActiveRecord::Migration
  def change
    create_table :entrances_lines, :id => false do |t|
      t.integer :entrance_id
      t.integer :line_id
    end
  end
end

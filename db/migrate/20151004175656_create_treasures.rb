class CreateTreasures < ActiveRecord::Migration
  def change
    create_table :treasures do |t|
        t.string :item
        t.timestamps
    end
  end
end

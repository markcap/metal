class CreateConcerts < ActiveRecord::Migration
  def self.up
    create_table :concerts do |t|
      t.date :concert_date
      t.string :bands
      t.text :description
      t.integer :venue_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :concerts
  end
end

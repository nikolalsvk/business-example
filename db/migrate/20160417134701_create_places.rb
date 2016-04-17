class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :postal_code, :limit => 5
      t.string :name, :limit => 50
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

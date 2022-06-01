class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.string :identifier
      t.references :blind, null: false, foreign_key: true
      t.references :whiskey, null: false, foreign_key: true

      t.timestamps
    end
  end
end

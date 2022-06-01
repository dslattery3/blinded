class CreateWhiskeys < ActiveRecord::Migration[7.0]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.float :proof
      t.string :distiller
      t.integer :age 
      t.string :whiskey_type
      t.boolean :single_barrel, :default => false

      t.timestamps
    end
  end
end

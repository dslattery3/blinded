class CreateWhiskeys < ActiveRecord::Migration[7.0]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.float :proof
      t.string :distiller
      t.integer :age
      t.boolean :single_barrel

      t.timestamps
    end
  end
end

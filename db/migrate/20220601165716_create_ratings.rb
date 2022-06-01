class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :sample, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :nose
      t.integer :palate
      t.integer :finish
      t.string :notes

      t.timestamps
    end
  end
end

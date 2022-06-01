class CreateUserblinds < ActiveRecord::Migration[7.0]
  def change
    create_table :userblinds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blind, null: false, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end

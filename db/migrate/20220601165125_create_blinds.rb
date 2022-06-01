class CreateBlinds < ActiveRecord::Migration[7.0]
  def change
    create_table :blinds do |t|
      t.string :name
      t.string :password_digest
      t.datetime :reveal_date

      t.timestamps
    end
  end
end

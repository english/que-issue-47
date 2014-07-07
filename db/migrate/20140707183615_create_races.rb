class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end

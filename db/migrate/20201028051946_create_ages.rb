class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.integer :years, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

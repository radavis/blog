class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone, :limit => 8  # 64-bit integer
      t.string :password, null: false

      t.timestamps
    end
  end
end

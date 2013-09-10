class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :password

      t.timestamps
    end
  end
end

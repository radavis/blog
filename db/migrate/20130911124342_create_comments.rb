class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id, null: false
      t.integer :author_id  # allow for anonymous posting by not including null:false
      t.text :content, null: false

      t.timestamps
    end
  end
end

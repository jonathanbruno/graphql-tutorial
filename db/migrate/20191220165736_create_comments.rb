class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :title
      t.references :user

      t.timestamps
    end
  end
end

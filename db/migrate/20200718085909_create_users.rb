class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :password, null: false
      t.string :name, null: false
      t.string :email, null: false     
      t.integer :delete_flug
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname,          null: false, default: ""
      t.string :lastname,           null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :confirmation_hash,  default: nil
      t.boolean :confirm,           null: false, default: false
      t.boolean :subscribe,         null: false, default: false

      t.timestamps
    end
      add_index :users, :email, unique: true
  end
end

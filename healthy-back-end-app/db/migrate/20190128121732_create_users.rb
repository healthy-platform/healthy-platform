class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstt_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :auth_token

      t.timestamps
    end
    add_index :users, :auth_token, unique: true
  end
end
 
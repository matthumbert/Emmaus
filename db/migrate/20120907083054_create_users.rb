class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.integer :profil_id
      t.string :site

      t.timestamps
    end
  end
  
  
end

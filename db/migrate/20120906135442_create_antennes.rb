class CreateAntennes < ActiveRecord::Migration
  def change
    create_table :antennes do |t|
      t.string :nom
      t.string :adresse
      t.string :code_pos
      t.string :ville
      t.string :telephone
      t.string :mail

      t.timestamps
    end
  end
end

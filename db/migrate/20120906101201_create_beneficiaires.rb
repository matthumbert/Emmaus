class CreateBeneficiaires < ActiveRecord::Migration
  def change
    create_table :beneficiaires do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naiss
      t.integer :dept_naiss
      t.string :adresse
      t.integer :code_pos
      t.string :ville
      t.integer :fixe
      t.integer :portable
      

      t.timestamps
    end
  end
end

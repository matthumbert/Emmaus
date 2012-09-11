class AddSexeToBeneficiaires < ActiveRecord::Migration
  def change
    add_column :beneficiaires, :sexe, :string
  end
end

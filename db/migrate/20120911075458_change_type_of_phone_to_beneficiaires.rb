class ChangeTypeOfPhoneToBeneficiaires < ActiveRecord::Migration
  def change
    change_column :beneficiaires, :fixe, :string
    change_column :beneficiaires, :portable, :string
  end
end

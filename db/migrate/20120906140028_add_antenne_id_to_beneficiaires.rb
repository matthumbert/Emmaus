class AddAntenneIdToBeneficiaires < ActiveRecord::Migration
  def change
    add_column :beneficiaires, :antenne_id, :integer
  end
end

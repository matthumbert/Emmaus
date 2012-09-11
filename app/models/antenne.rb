class Antenne < ActiveRecord::Base
  attr_accessible :adresse, :code_pos, :mail, :nom, :telephone, :ville
  has_many :beneficiaires
end

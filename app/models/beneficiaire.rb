class Beneficiaire < ActiveRecord::Base
  attr_accessible :adresse, :code_pos, :date_naiss, :dept_naiss, :fixe, :nom, :portable, :prenom, :ville, :sexe, :antenne_id
  belongs_to :antenne
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :date_naiss, presence: true
  validates :adresse, presence: true
  validates :code_pos, presence: true
  validates :ville, presence: true
  validates :fixe, length: { maximum: 10 }
  validates :portable, length: { maximum: 50 } 
  
end

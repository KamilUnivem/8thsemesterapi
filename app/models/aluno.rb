class Aluno < ApplicationRecord
	validates :cpf, :name, :email, :date_of_birth, :ra, presence: true
  validates :cpf, length: {is: 11}

end

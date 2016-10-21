load "domain/entities/aluno.rb"

require 'mechanize'
require 'json'

BASE_URL   = "http://localhost:3000/"
ALUNOS_URL = "#{BASE_URL}alunos"

def show_info_about_alunos
	# GET
	alunos_response = JSON.parse(@agent.get("#{ALUNOS_URL}.json").body)
	puts "\nQuantidade de alunos: " + alunos_response.size.to_s

	puts "Lista de alunos:"
	alunos_response.each_with_index do |aluno, idx|
		puts "#{idx}| id: #{aluno["id"]}, nome: #{aluno["name"]}"
	end
end

student = Aluno.new('args')
puts student.class
student.name          = "kamil"
student.email         = "kamil@asd.com"
student.cpf           = '4545121'
student.date_of_birth = '04/08/1954'
student.ra            = '123123123'


p student
# puts "is valid" if Aluno.is_valid?(student)

def add_new_aluno(aluno)
	post_response = eval(@agent.post(ALUNOS_URL))
end

@agent = Mechanize.new

show_info_about_alunos

add_new_aluno(student)

puts

# puts "\nQuantidade de alunos: " + alunos_response.size.to_s
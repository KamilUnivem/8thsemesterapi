json.extract! aluno, :id, :cpf, :name, :email, :date_of_birth, :ra, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
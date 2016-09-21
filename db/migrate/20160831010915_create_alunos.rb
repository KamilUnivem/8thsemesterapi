class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :cpf
      t.string :name
      t.string :email
      t.integer :date_of_birth
      t.integer :ra

      t.timestamps
    end
  end
end

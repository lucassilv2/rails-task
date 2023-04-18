class CreateTarefas < ActiveRecord::Migration[7.0]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.text :descricao
      t.string :categoria
      t.date :data_vencimento

      t.timestamps
    end
  end
end

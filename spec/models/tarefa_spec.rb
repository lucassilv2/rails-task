require 'rails_helper'

RSpec.describe Tarefa, type: :model do
  # Caso de teste para validar a presença do título
  it "é inválido sem título" do
    tarefa = Tarefa.new(titulo: nil)
    expect(tarefa).to_not be_valid
  end

  # Caso de teste para validar a presença da descrição
  it "é inválido sem descrição" do
    tarefa = Tarefa.new(descricao: nil)
    expect(tarefa).to_not be_valid
  end

  # Caso de teste para validar a presença da categoria
  it "é inválido sem categoria" do
    tarefa = Tarefa.new(categoria: nil)
    expect(tarefa).to_not be_valid
  end

  # Caso de teste para validar a presença da data de vencimento
  it "é inválido sem data de vencimento" do
    tarefa = Tarefa.new(data_vencimento: nil)
    expect(tarefa).to_not be_valid
  end

  # Caso de teste para validar a criação de uma tarefa válida
  it "é válido com todos os atributos preenchidos corretamente" do
    tarefa = Tarefa.new(titulo: "Tarefa de exemplo", descricao: "Descrição da tarefa", categoria: "Categoria da tarefa", data_vencimento: Date.today)
    expect(tarefa).to be_valid
  end
end

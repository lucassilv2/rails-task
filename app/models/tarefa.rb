class Tarefa < ApplicationRecord
  validates :titulo, presence: true
  validates :descricao, presence: true
  validates :categoria, presence: true
  validates :data_vencimento, presence: true

  def test_code_see
    true
  end
end

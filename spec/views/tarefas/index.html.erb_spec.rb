require 'rails_helper'

RSpec.describe "tarefas/index", type: :view do
  before(:each) do
    assign(:tarefas, [
      Tarefa.create!(
        titulo: "MyString",
        descricao: "MyText",
        categoria: "MyString",
        data_vencimento: Date.today + 3.days
      ),
      Tarefa.create!(
        titulo: "MyString",
        descricao: "MyText",
        categoria: "MyString",
        data_vencimento: Date.today + 3.days
      )
    ])
  end

  it "renders a list of tarefas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Titulo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Categoria".to_s), count: 2
  end
end

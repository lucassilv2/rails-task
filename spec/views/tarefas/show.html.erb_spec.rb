require 'rails_helper'

RSpec.describe "tarefas/show", type: :view do
  before(:each) do
    assign(:tarefa, Tarefa.create!(
      titulo: "MyString",
      descricao: "MyText",
      categoria: "MyString",
      data_vencimento: Date.today + 3.days
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Categoria/)
  end
end

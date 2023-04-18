require 'rails_helper'

RSpec.describe "tarefas/edit", type: :view do
  let(:tarefa) {
    Tarefa.create!(
      titulo: "MyString",
      descricao: "MyText",
      categoria: "MyString",
      data_vencimento: Date.today + 3.days
    )
  }

  before(:each) do
    assign(:tarefa, tarefa)
  end

  it "renders the edit tarefa form" do
    render

    assert_select "form[action=?][method=?]", tarefa_path(tarefa), "post" do

      assert_select "input[name=?]", "tarefa[titulo]"

      assert_select "textarea[name=?]", "tarefa[descricao]"

      assert_select "input[name=?]", "tarefa[categoria]"
    end
  end
end

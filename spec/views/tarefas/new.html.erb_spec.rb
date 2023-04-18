require 'rails_helper'

RSpec.describe "tarefas/new", type: :view do
  before(:each) do
    assign(:tarefa, Tarefa.new(
      titulo: "MyString",
      descricao: "MyText",
      categoria: "MyString",
      data_vencimento: Date.today + 3.days
    ))
  end

  it "renders new tarefa form" do
    render

    assert_select "form[action=?][method=?]", tarefas_path, "post" do

      assert_select "input[name=?]", "tarefa[titulo]"

      assert_select "textarea[name=?]", "tarefa[descricao]"

      assert_select "input[name=?]", "tarefa[categoria]"
    end
  end
end

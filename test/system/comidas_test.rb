require "application_system_test_case"

class ComidasTest < ApplicationSystemTestCase
  setup do
    @comida = comidas(:one)
  end

  test "visiting the index" do
    visit comidas_url
    assert_selector "h1", text: "Comidas"
  end

  test "should create comida" do
    visit comidas_url
    click_on "New comida"

    fill_in "Compra", with: @comida.compra
    fill_in "Desc", with: @comida.desc
    check "Estragado" if @comida.estragado
    fill_in "Nome", with: @comida.nome
    fill_in "Price", with: @comida.price
    fill_in "Quantidade", with: @comida.quantidade
    fill_in "Vencimento", with: @comida.vencimento
    click_on "Create Comida"

    assert_text "Comida was successfully created"
    click_on "Back"
  end

  test "should update Comida" do
    visit comida_url(@comida)
    click_on "Edit this comida", match: :first

    fill_in "Compra", with: @comida.compra
    fill_in "Desc", with: @comida.desc
    check "Estragado" if @comida.estragado
    fill_in "Nome", with: @comida.nome
    fill_in "Price", with: @comida.price
    fill_in "Quantidade", with: @comida.quantidade
    fill_in "Vencimento", with: @comida.vencimento
    click_on "Update Comida"

    assert_text "Comida was successfully updated"
    click_on "Back"
  end

  test "should destroy Comida" do
    visit comida_url(@comida)
    click_on "Destroy this comida", match: :first

    assert_text "Comida was successfully destroyed"
  end
end

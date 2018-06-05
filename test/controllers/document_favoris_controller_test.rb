require 'test_helper'

class DocumentFavorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_favori = document_favoris(:one)
  end

  test "should get index" do
    get document_favoris_url
    assert_response :success
  end

  test "should get new" do
    get new_document_favori_url
    assert_response :success
  end

  test "should create document_favori" do
    assert_difference('DocumentFavori.count') do
      post document_favoris_url, params: { document_favori: { document_id: @document_favori.document_id, user_id: @document_favori.user_id } }
    end

    assert_redirected_to document_favori_url(DocumentFavori.last)
  end

  test "should show document_favori" do
    get document_favori_url(@document_favori)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_favori_url(@document_favori)
    assert_response :success
  end

  test "should update document_favori" do
    patch document_favori_url(@document_favori), params: { document_favori: { document_id: @document_favori.document_id, user_id: @document_favori.user_id } }
    assert_redirected_to document_favori_url(@document_favori)
  end

  test "should destroy document_favori" do
    assert_difference('DocumentFavori.count', -1) do
      delete document_favori_url(@document_favori)
    end

    assert_redirected_to document_favoris_url
  end
end

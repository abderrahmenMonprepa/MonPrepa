require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { document_course: @document.document_course, document_data: @document.document_data, document_key: @document.document_key, document_level: @document.document_level, document_section: @document.document_section, document_subject: @document.document_subject, document_type: @document.document_type, document_year: @document.document_year } }
    end

    assert_redirected_to document_url(Document.last)
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { document_course: @document.document_course, document_data: @document.document_data, document_key: @document.document_key, document_level: @document.document_level, document_section: @document.document_section, document_subject: @document.document_subject, document_type: @document.document_type, document_year: @document.document_year } }
    assert_redirected_to document_url(@document)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document)
    end

    assert_redirected_to documents_url
  end
end

require 'test_helper'

class DocumentImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_image = document_images(:one)
  end

  test "should get index" do
    get document_images_url
    assert_response :success
  end

  test "should get new" do
    get new_document_image_url
    assert_response :success
  end

  test "should create document_image" do
    assert_difference('DocumentImage.count') do
      post document_images_url, params: { document_image: { document_id: @document_image.document_id, image_data: @document_image.image_data, image_order: @document_image.image_order } }
    end

    assert_redirected_to document_image_url(DocumentImage.last)
  end

  test "should show document_image" do
    get document_image_url(@document_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_image_url(@document_image)
    assert_response :success
  end

  test "should update document_image" do
    patch document_image_url(@document_image), params: { document_image: { document_id: @document_image.document_id, image_data: @document_image.image_data, image_order: @document_image.image_order } }
    assert_redirected_to document_image_url(@document_image)
  end

  test "should destroy document_image" do
    assert_difference('DocumentImage.count', -1) do
      delete document_image_url(@document_image)
    end

    assert_redirected_to document_images_url
  end
end

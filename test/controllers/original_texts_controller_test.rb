require 'test_helper'

class OriginalTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @original_text = original_texts(:one)
  end

  test "should get index" do
    get original_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_original_text_url
    assert_response :success
  end

  test "should create original_text" do
    assert_difference('OriginalText.count') do
      post original_texts_url, params: { original_text: { book_publish_year: @original_text.book_publish_year, book_publisher: @original_text.book_publisher, book_title: @original_text.book_title, card_id: @original_text.card_id } }
    end

    assert_redirected_to original_text_url(OriginalText.last)
  end

  test "should show original_text" do
    get original_text_url(@original_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_original_text_url(@original_text)
    assert_response :success
  end

  test "should update original_text" do
    patch original_text_url(@original_text), params: { original_text: { book_publish_year: @original_text.book_publish_year, book_publisher: @original_text.book_publisher, book_title: @original_text.book_title, card_id: @original_text.card_id } }
    assert_redirected_to original_text_url(@original_text)
  end

  test "should destroy original_text" do
    assert_difference('OriginalText.count', -1) do
      delete original_text_url(@original_text)
    end

    assert_redirected_to original_texts_url
  end
end

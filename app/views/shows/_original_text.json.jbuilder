json.extract! original_text, :id, :card_id, :book_title, :book_publisher, :book_publish_year, :created_at, :updated_at
json.url original_text_url(original_text, format: :json)
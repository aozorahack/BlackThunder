# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

card = Card.create(
  {title: '解析概論', title_kana: 'かいせきがいろん'}
)

originalText = OriginalText.create(
  {card_id: card.id, book_title: '解析概論', book_publisher: 'ほげほげ', book_publish_year: '0000'}
)

imgurl_prefix = '/KaisekiGairon/KaisekiGairon/large_jpg'
pages = Page.create([
  {original_text_id: originalText.id, page_no:  1, original_image_url: "#{imgurl_prefix}/before/0003.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  2, original_image_url: "#{imgurl_prefix}/before/0004.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  3, original_image_url: "#{imgurl_prefix}/before/0005.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  4, original_image_url: "#{imgurl_prefix}/before/0006.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  5, original_image_url: "#{imgurl_prefix}/before/0007.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  6, original_image_url: "#{imgurl_prefix}/before/0008.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  7, original_image_url: "#{imgurl_prefix}/before/0009.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  8, original_image_url: "#{imgurl_prefix}/before/0010.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no:  9, original_image_url: "#{imgurl_prefix}/before/0011.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no: 10, original_image_url: "#{imgurl_prefix}/before/0012.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no: 11, original_image_url: "#{imgurl_prefix}/before/0013.jpg", text_working: ''},
  {original_text_id: originalText.id, page_no: 12, original_image_url: "#{imgurl_prefix}/before/0014.jpg", text_working: ''},
])

class OriginalText < ApplicationRecord
  belongs_to :card
  has_many :pages

end

class Subscriber < ApplicationRecord
  belongs_to :product
  has_secure_token :unsubscribe_token
end

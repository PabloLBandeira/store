require "test_helper"

class SubscriberTest < ActiveSupport::TestCase
  test "should generate unsubscribe token on create" do
    subscriber = Subscriber.create!(
      product: products(:tshirt),
      email: "test@example.com"
    )
    assert subscriber.unsubscribe_token.present?
  end
end

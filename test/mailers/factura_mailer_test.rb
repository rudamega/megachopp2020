require 'test_helper'

class FacturaMailerTest < ActionMailer::TestCase
  test "factura" do
    mail = FacturaMailer.factura
    assert_equal "Factura", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

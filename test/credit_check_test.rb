require 'minitest/autorun'
require 'minitest/pride'
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test

  def test_initialize
    check = CreditCheck.new(5541808923795240)

    assert_equal false, check.valid
    assert_equal "5541808923795240", check.card_number
  end

  def test_check_card_returns_summed_digits_modulo_10_if_valid_and_not_if_invalid
    check_1 = CreditCheck.new(5541808923795240)
    check_2 = CreditCheck.new("5541801923795240")

    assert_equal 70, check_1.check_card("5541808923795240")
    assert_equal 65, check_2.check_card("5541801923795240")
  end

  def test_validate_returns_nil_and_output_returns_correct_valid
    check_1 = CreditCheck.new(5541808923795240)
    check_2 = CreditCheck.new("5541801923795240")
    check_1.validate

    assert_nil nil, check_1.validate
    assert_nil nil, check_2.validate
    assert_equal true, check_1.valid
  end

  def test_output_validates_correctly
    check_1 = CreditCheck.new(5541808923795240)
    check_2 = CreditCheck.new("5541801923795240")
    check_1.validate
    check_2.validate

    assert_equal true, check_1.valid
    assert_equal false, check_2.valid
  end


end

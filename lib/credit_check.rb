require "pry"

class CreditCheck

  attr_reader :valid, :card_number

  def initialize(card_number)
    @valid = false
    @card_number = card_number.to_s
  end

  def check_card(number)
    results = 0
    number.chars.reverse.each_with_index do |number, index|
      if index.odd?
        doubled = number.to_i * 2
        if doubled > 9
          results += doubled.digits.sum
        else
          results += doubled
        end
      else
        results += number.to_i
      end
    end
    results
  end

  def validate
    if ((check_card(@card_number)) % 10) == 0
      @valid = true
    else
      @valid
    end
    output
  end

  def output
    if @valid == true
      puts "The number is valid"
    else
      puts "The number is invalid"
    end
  end

end

cc_1 = CreditCheck.new(5541808923795240)
cc_1.validate
cc_2 = CreditCheck.new(5541801923795240)
cc_2.validate
cc_3 = CreditCheck.new("4024007136512380")
cc_3.validate
cc_4 = CreditCheck.new("4024007106512380")
cc_4.validate
cc_5 = CreditCheck.new("342804633855673")
cc_5.validate
cc_6 = CreditCheck.new(342801633855673)
cc_6.validate

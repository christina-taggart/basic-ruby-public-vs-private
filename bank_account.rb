class BankAccount
  attr_reader :customer_name, :type
  attr_accessor :acct_number, :hidden_acct_number
  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
    @hidden_acct_number = hidden_acct_number
  end

  def hidden_acct_number
    acct_number.gsub(/(\d{9}$)/, 'XXXXXXXXX')
  end

  def to_s
    puts ("#{customer_name}: #{type} #{hidden_acct_number}")
  end
end

my_acct = BankAccount.new("Emily", "Checking", "1234567891234")

p my_acct.to_s == "Emily: Checking 1234XXXXXXXXX"
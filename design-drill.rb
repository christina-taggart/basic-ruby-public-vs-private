class BankAccount
  attr_reader :customer_name, :acct_number
  attr_accessor :type

  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    "My account info is name:#{@customer_name}, type: #{@type}, and account number: ...#{@acct_number[-4..-1]}"
  end



end

darcey = BankAccount.new("Darcey Lachtman", "Savings", "1234567890")

p darcey.to_s == "My account info is name:Darcey Lachtman, type: Savings, and account number: ...7890"
class BankAccount
  attr_accessor :customer_name
  attr_reader :type

  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    "#{@customer_name}: #{@type} # #{acct_number}"
  end

  def acct_number
    obfuscate(@acct_number)
  end

  private

  def obfuscate(number)
    @acct_number.sub(/^\d{3}-\d{3}/, "XXX-XXX")
  end

end

#-----DRIVER CODE --------

my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")

puts my_acct.to_s
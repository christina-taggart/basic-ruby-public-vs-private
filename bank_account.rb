class BankAccount
  attr_reader :customer_name, :type, :acct_number
def initialize(customer_name, type, acct_number)
  @customer_name = customer_name
  @type = type
  @acct_number = acct_number
end

def to_s
  obfuscated_string = @acct_number.gsub!(/\d{3}./, "*")
  puts "#{@customer_name}: #{@type}, #{@acct_number}"
end

end





my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
p my_acct.to_s
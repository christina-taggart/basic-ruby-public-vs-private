class BankAccount

def initialize(customer_name, type, acct_number)
  @customer_name = customer_name
  @type = type
  @acct_number = acct_number
end


end

my_acct =  BankAccount.new("Junipero Serra", "Checking", "347-923-239")
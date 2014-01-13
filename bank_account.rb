class BankAccount

def initialize(customer_name, type, acct_number)
  @customer_name = customer_name
  @type = type
  @acct_number = acct_number.gsub!(/-/, '')
end

def to_s
  puts "My account information is #{@customer_name}, #{@type}, #{@acct_number.gsub(/\d{5}/, "*****")}"
end

end

my_acct =  BankAccount.new("Junipero Serra", "Checking", "347-923-239")
my_acct.to_s
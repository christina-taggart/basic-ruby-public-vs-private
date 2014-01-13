class BankAccount
attr_reader :type, :customer_name
attr_accessor :customer_name
def initialize(customer_name, type, acct_number)
  @customer_name = customer_name
  @type = type
  @acct_number = acct_number.gsub!(/-/, '')
end

def view_acct_number
  @acct_number.gsub(/\d{5}/, "*****")
end

def to_s
  puts "My account information is #{@customer_name}, #{@type}, #{view_acct_number}"
end

def transfer_account(name)
  @customer_name = name
end

end

my_acct =  BankAccount.new("Junipero Serra", "Checking", "347-923-239")
my_acct.to_s
my_acct.transfer_account("Christina Taggart")
my_acct.to_s
my_acct.customer_name = "Junipero Serra"
my_acct.to_s

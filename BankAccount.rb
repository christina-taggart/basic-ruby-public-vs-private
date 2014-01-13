class BankAccount
  attr_reader :acc_number. :customer_name, :type
  def initialize(customer_name, type, acc_number)
    @customer_name = customer_name
    @type = type
    @acc_number = "#{ "*" * (acc_number.length-4)}#{acc_number.delete("-")[-4..-1]}"
  end

  def to_s
    "#{@customer_name}: #{@acc_number}"
  end
end

my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")

p "My account #{my_acct}"
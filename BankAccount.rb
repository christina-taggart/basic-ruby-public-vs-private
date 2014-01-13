class BankAccount
  def initialize(customer_name, type, acc_number)
    @customer_name = customer_name
    @type = type
    @acc_number = acc_number
  end
end

p my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
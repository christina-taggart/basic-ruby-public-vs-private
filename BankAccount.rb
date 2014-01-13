class BankAccount

  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    p hidden_number = (@acct_number.delete "-").gsub(/\d{5}/,'*****')
    "#{@customer_name}: #{@type}# #{hidden_number}"
  end


end




my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")


# p my_acct.to_s == "Junipero Serra: Checking# *****3239"
p my_acct.to_s
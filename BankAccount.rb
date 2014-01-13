class BankAccount
  attr_reader :customer_name, :type, :acct_number

  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
    @hidden_number = ""
  end

  def to_s
    "#{@customer_name}: #{@type}# #{hide_number}"
  end

  private
  def hide_number
    @hidden_number = (@acct_number.delete "-").gsub(/\d{5}/,'*****')
  end

end




my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")


# p my_acct.to_s == "Junipero Serra: Checking# *****3239"
p my_acct.to_s
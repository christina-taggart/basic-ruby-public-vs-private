class BankAccount
  attr_accessor :customer_name
  attr_reader :type

  def initialize(customer_name, type, account_number)
    @customer_name = customer_name
    @type = type
    @acct_number = account_number

  end


  def to_s
    puts "#{@customer_name}: #{@type}##{@acct_number}"
    #str = "My account information is #{my_acct}"
  end

  def display_account_number
    @acct_number.gsub(/\d{3}-\d{3}/, "XXX-XXX")
  end



end




my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")

p my_acct.customer_name
p my_acct.type
p my_acct.display_account_number

#p "test #{my_acct.to_s}"



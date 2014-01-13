class BankAccount
  attr_accessor :type, :customer_name
  attr_reader  :acct_number
  def initialize(customer_name,type,acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    to_hide = @acct_number.split("")
    p "#{@customer_name}: #{@type} ******#{to_hide.pop(4).join}"
  end
end

my_acct = BankAccount.new("David","Mad Cash","62762728")
my_acct.to_s

class BankAccount
  attr_reader :customer_name
  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    mask_number
    "#{@customer_name}: #{@type}# #{@masked_number}"
  end

  private
    def mask_number
      @masked_number = "*****#{@acct_number.reverse.slice(0, 5).gsub(/\D/, "").reverse}"
    end
end

# Driver Code
my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")

p my_acct.class == BankAccount
p my_acct.to_s == "Junipero Serra: Checking# *****3239"
str = "My account information is #{my_acct}"
p str == "My account information is Junipero Serra: Checking# *****3239"
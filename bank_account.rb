class BankAccount
  attr_reader :customer_name, :type

  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
  end

  def to_s
    puts "#{customer_name}: #{type} ##{last_4_digits}"
  end

  private

  def last_4_digits
    ("*" * (@acct_number.length - 4)) + @acct_number.gsub(/-/, "")[-4..-1]
  end
end

my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
my_acct.to_s
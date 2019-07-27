class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize (name)
    @balance = 1000
    @status = "open"
    @name = name
  end
  
  def deposit (amount)
    self.balance += amount
  end
  
  def display_balance
    puts "Your balance is $#{@balance}."
  end
  
  def valid?
    true if @status == "open" && @balance >= 0
    false
  end
  
  def close_account
    @status = "closed"
  end

end

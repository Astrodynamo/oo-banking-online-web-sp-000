class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    true if self.sender.valid? && self.receiver.valid? && self.sender.balance >= self.amount
  end
  
  def execute_transaction
    if self.valid? && self.status == "pending"
      self.sender.balance -= self.amount
      self.receiver.deposit (self.amount)
      self.status = "complete"
    end
  end
  
  def reverse_transfer
    
  end
  
end

class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? == true && receiver.valid? == true
      then true
    else
      false
    end
  end

  def execute_transaction
    if valid? == true then
    @receiver.balance += @amount
    @sender.balance -= @amount
    @status = "complete"
  else return "Transaction rejected. Please check your account balance." end
  end

end

class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # def bank_account(balance=25)
  #   @bank_account = balance
  # end

  def happiness=(happy_index=8)
    @happiness = happy_index
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end 
  end

  def hygiene=(hygiene_index)
    @hygiene = hygiene_index
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      return true
    else 
      false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else 
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness = @happiness += 3
    name.happiness += 3
    return "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(callee, topic)
    if topic == "politics"
      self.happiness = @happiness -= 2
      callee.happiness = callee.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      callee.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end


class PartnerError < StandardError
  def initialize(msg= "you must give the get_married method an argument of an instance of the person class!")
    super
  end
end
class Person
  attr_accessor :partner, :name
  def initialize(name)
    @name = name
  end
  def get_married(person)
    self.partner = person
    if person.class != Person
      raise PartnerError
    else
      person.partner = self
    end
  end
end
beyonce = Person.new("Beyonce")
jay = Person.new("Jay-Z")
beyonce.get_married(jay)
puts beyonce.name
beyonce.get_married("jay")

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  end

end

yvonne = Person.new("Yvonne")
yvonne.get_married("Nguyen")
puts yvonne.name





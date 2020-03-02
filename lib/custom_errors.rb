class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
<<<<<<< HEAD
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
=======
      raise PartnerError
>>>>>>> f9da93c59c60b24efa1f6037182e8fccff87afc6
    else
      person.partner = self
    end
  end

  class PartnerError < StandardError
<<<<<<< HEAD
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
=======
>>>>>>> f9da93c59c60b24efa1f6037182e8fccff87afc6
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

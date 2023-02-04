# class Person

#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name
#   end

#   def attr_writer(name)
#     @name = name
#   end

# end

# p = Person.new('L. Ron')
# p.attr_writer('bob')
# puts p.name

class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

p = Person.new('L. Ron')
p.name = "New Name"
puts p.name

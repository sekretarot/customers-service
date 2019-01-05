class Customer

  attr_accessor :name, :surname, :id

  def initialize(init_hash)
    @name = init_hash[:name]
    @surname = init_hash[:surname]
    @id = init_hash[:id]
  end
end
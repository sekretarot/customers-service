class Customer

  attr_accessor :name, :surname, :id

  def initialize(init_json)
    @name = init_json[:name]
    @surname = init_json[:surname]
    @id = init_json[:id]
  end
end
class AccountsService
  include HTTParty
  base_uri Settings.accounts_service_url

  def initialize(customer)
    @customer = customer
  end

  def create_account(initial_credit)
    options = {query: {customer_id: @customer.id, initial_credit: initial_credit}}
    self.class.post("/accounts", options)
  end

end
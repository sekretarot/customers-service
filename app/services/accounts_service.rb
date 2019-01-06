class AccountsService
  include HTTParty
  base_uri Settings.accounts_service_url
  
  def initialize(customer = nil)
    @customer = customer
  end

  def available?
    begin
      response = self.class.get("/health")
      response.ok? ? true : false
    rescue StandardError
      return false
    end
  end

  def create_account(initial_credit)
    options = {query: {customer_id: @customer.id, initial_credit: initial_credit}}
    response = self.class.post("/accounts", options)
    if response.ok?
      response.parsed_response
    else
      raise Errors::AccountsServiceError.new
    end
  end

  def get_accounts
    begin
      options = {query: {customer_id: @customer.id}}
      self.class.get("/accounts/customer", options).parsed_response
    rescue StandardError
      nil
    end
  end

end
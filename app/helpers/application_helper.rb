module ApplicationHelper
  def accounts_service_available?
    AccountsService.new.available?
  end
end

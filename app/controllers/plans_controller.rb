class PlansController < Devise::RegistrationsController

def index
  @plans = Plan.order("price")
end

end
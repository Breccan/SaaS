module Saas
  class PaymentsController < Saas::ApplicationController
    include ActiveMerchant::Billing::Integrations

    def index

    end

  end
end

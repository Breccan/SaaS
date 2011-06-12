require 'active_merchant' 
require 'active_merchant/billing/integrations/action_view_helper' 
ActionView::Base.send(:include, 
                      ActiveMerchant::Billing::Integrations::ActionViewHelper) 

unless Rails.env == 'production'
    PAYPAL_ACCOUNT = 'test_code'
    ActiveMerchant::Billing::Base.mode = :test
end

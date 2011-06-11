module Saas
  module Admin
    class SubscriptionsController < Saas::ApplicationController

      def index
        @subscriptions = Subscription.all
      end

      def new
        @subscription = Subscription.new
      end

      def create

      end

      def update

      end

      def edit

      end

      def destroy

      end

    end
  end
end

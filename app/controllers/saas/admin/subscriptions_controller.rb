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
        @subscription = Subscription.new(params[:subscription])
        if @subscription.save
          flash[:notice] = "Subscription successfully created"
          redirect_to admin_subscriptions_path
        else
          flash[:alert] = "Save failed"
          render :new
        end
      end

      def edit
        @subscription = Subscription.find_by_id(params[:id])
      end

      def update
        @subscription = Subscription.find_by_id(params[:id])
        if @subscription.update_attributes(params[:subscription])
          flash[:notice] = "Subscription successfully created"
          redirect_to admin_subscriptions_path
        else
          flash[:alert] = "Save failed"
          render :new
        end
      end


      def destroy
        @subscription = Subscription.find_by_id(params[:id])
        @subscription.destroy
        redirect_to admin_subscriptions_path
      end

    end
  end
end

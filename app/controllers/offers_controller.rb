class OffersController < ApplicationController
  inherit_resources
  before_filter :authenticate_user!, except: [:index]

  def create
    @offer = Offer.new(params[:offer])
    @offer.user = current_user
    if @offer.save
      redirect_to({action: :index}, notice: 'Offer was created sucessfully')
    else
      render :new
    end
  end
end
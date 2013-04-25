class UserRegistrationsController < Devise::RegistrationsController
  after_filter :create_user_wallet, only: :create
  protected

  def create_user_wallet
    resource.wallet = WalletFactory.default
  end
end

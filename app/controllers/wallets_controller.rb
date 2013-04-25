class WalletsController < BaseController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def resource
    @wallet = current_user.wallet
  end
end

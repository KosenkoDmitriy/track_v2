Spree::UserSessionsController.class_eval do
  # using from ginlane's spree_auth_devise fork to customize the sign in and sign out redirects

  def after_sign_in_path_for(_user)
    spree.account_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    '/'
  end

  def create
    authenticate_spree_user!

    if spree_user_signed_in?
      respond_to do |format|
        format.html do
          flash[:success] = Spree.t(:logged_in_succesfully)
          redirect_back_or_default(after_sign_in_path_for(spree_current_user))
        end
        format.js do
          render json: { user: spree_current_user,
                         ship_address: spree_current_user.ship_address,
                         bill_address: spree_current_user.bill_address }.to_json
        end
      end
    else
      respond_to do |format|
        format.html do
          flash.now[:error] = t('devise.failure.invalid')
          render :error
        end
        format.js do
          render json: { error: t('devise.failure.invalid') }, status: :unprocessable_entity
        end
      end
    end
  end

  def new
    super
    @user = resource
  end
end

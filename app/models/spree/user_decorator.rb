Spree::User.class_eval do
  after_create :send_welcome_email

  def alchemy_roles
    %w(admin) if self.has_spree_role?('admin')
  end

  def send_welcome_email
    # UserMailer.welcome(self.id).deliver
  rescue
  end
end

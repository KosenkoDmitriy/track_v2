# Tell Alchemy to use the Spree::User class
Alchemy.user_class_name = 'Spree::User'
Alchemy.current_user_method = :spree_current_user

# Load the Spree.user_class decorator for Alchemy roles
require 'alchemy/spree/spree_user_decorator'

# Include the Spree controller helpers to render the
# alchemy pages within the default Spree layout
Alchemy::BaseHelper.send :include, Spree::BaseHelper
Alchemy::BaseController.send :include, Spree::Core::ControllerHelpers::Common
Alchemy::BaseController.send :include, Spree::Core::ControllerHelpers::Store

Alchemy.login_path = :spree_login
Alchemy.logout_path = :spree_logout

# Custom 404 renderer
Alchemy::PagesController.class_eval do
  def render_404(exception = nil)
    @page = Alchemy::Page.where(page_layout: 'error_page').first
    logger.info "Rendering 404: #{exception.message}" if exception
    render 'alchemy/errors/not_found'
  end
end

# Update the elements class to create them non public by default
Alchemy::Element.class_eval do
  after_create :set_element_not_public

  def set_element_not_public
    self.public = false
    save
  end
end

# Override Alchemy's strip tags in essence rich texts to avoid line run ins occasioned by the stripping of <br>s
# Stripping HTML Tags and only returns plain text.
Alchemy::EssenceRichtext.class_eval do
  def strip_tags(html)
    return html if html.blank?
    if html.index('<')
      text = ''
      tokenizer = ::HTML::Tokenizer.new(html)
      while token = tokenizer.next
        node = ::HTML::Node.parse(nil, 0, 0, token, false)
        # result is only the content of any Text nodes
        text << "\r\n" if node.class == ::HTML::Tag && node.match(tag: 'br')
        text << node.to_s if node.class == ::HTML::Text
      end
      # strip any comments, and if they have a newline at the end (ie. line with
      # only a comment) strip that too
      text.gsub(/<!--(.*?)-->[\n]?/m, '')
    else
      html # already plain text
    end
  end
end

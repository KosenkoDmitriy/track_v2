Spree::Shipment.class_eval do
  include MandrillHelper
  def send_shipped_email
    sendMandrillMail(template: '/mandrill/order_shipped',
                     subject: I18n.t('user_mailer.order_shipped.subject'),
                     locals: { shipment: self },
                     to: [{
                       email: order.email,
                       name: "#{order.bill_address.firstname} #{order.bill_address.lastname}"
                     }])
 end
end

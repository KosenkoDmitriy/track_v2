
Spree::Shipment.class_eval do
  def send_shipped_email
    # Spree::ShipmentMailer.shipped_email(self.id).deliver if Spree::Config.send_shipped_email
    # if user
    sendMandrillMail(template: '/mandrill/order_shipped',
                     subject: I18n.t('user_mailer.order_shipped.subject'),
                     locals: { shipment: self },
                     to: [{
                       email: order.email,
                       name: "#{order.bill_address.firstname} #{order.bill_address.lastname}"
                     }])

    # end
  end
end

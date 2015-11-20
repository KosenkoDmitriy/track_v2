# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  if Rails.env.production?
    config.shipstation_username = 'mobispoke'
    config.shipstation_password = 'mobispoke123'
  else
    config.shipstation_username = 'mobispoke'
    config.shipstation_password = 'mobispoke123'
  end

  config.shipstation_weight_units = 'Grams' # Grams, Ounces or Pounds

  # choose which number to send shipstation, use :shipment or :order, default is :shipment
  config.shipstation_number = :shipment

  # if you prefer to send notifications via shipstation
  config.send_shipped_email = false
end

Spree.user_class = 'Spree::User'

# This migration comes from spree_store_credits (originally 20151209152030)
class AddPreferencesToSpreePromotionActionsGiveStoreCredit < ActiveRecord::Migration
  def change
    add_column :spree_store_credits, :preferences, :text
  end
end

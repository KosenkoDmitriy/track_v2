module OrderWeightCategory
  Light = 1
  Default = 2
  Heavy = 4
end

class Spree::Calculator::TieredFlatRateShipping < Spree::ShippingCalculator
  preference :light_cost, :decimal, default: -1
  preference :default_cost, :decimal, default: -1
  preference :heavy_cost, :decimal, default: -1

  def self.description
    'Tiered Flat Rate'
  end

  def compute(_object = nil)
    case @order_weight_category
    when OrderWeightCategory::Heavy
      return preferred_heavy_cost
    when OrderWeightCategory::Light
      return preferred_light_cost
    else
      return preferred_default_cost
    end
  end

  def available?(object)
    @order_weight_category = calculateOrderWeightCategory(object.order)

    case @order_weight_category
    when OrderWeightCategory::Heavy
      return preferred_heavy_cost != -1
    when OrderWeightCategory::Light
      return preferred_light_cost != -1
    else
      return preferred_default_cost != -1
    end
  end

  def isHeavy?(product)
    !product.properties.select { |property| property.name == 'heavy' }[0].nil?
  end

  def isLight?(product)
    !product.properties.select { |property| property.name == 'light' }[0].nil?
  end

  def calculateOrderWeightCategory(order)
    is_light_order = true # All products must be light.
    is_heavy_order = false # Only 1 has to be heavy.

    order.line_items.each do |line_item|
      product = line_item.product

      is_light_order = false unless isLight?(product)

      return OrderWeightCategory::Heavy if isHeavy?(product)
    end

    return OrderWeightCategory::Light if is_light_order

    # Wasn't light or heavy return default
    OrderWeightCategory::Default
  end
end

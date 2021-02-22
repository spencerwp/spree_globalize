module Spree::ShippingMethodDecorator
  def self.prepended(base)
    base.translates :name
  end

  Spree::ShippingMethod.include SpreeGlobalize::Translatable
end

::Spree::ShippingMethod.prepend(Spree::ShippingMethodDecorator) if ::Spree::ShippingMethod.included_modules.exclude?(Spree::ShippingMethodDecorator)

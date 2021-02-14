module Spree::ProductPropertyDecorator
  def self.prepended(base)
    base.extend Mobility
    base.translates :value
  end

  Spree::ProductProperty.include SpreeGlobalize::Translatable
end

::Spree::ProductProperty.prepend(Spree::ProductPropertyDecorator)

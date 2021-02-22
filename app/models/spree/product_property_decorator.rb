module Spree::ProductPropertyDecorator
  def self.prepended(base)
    base.translates :value
  end

  Spree::ProductProperty.include SpreeGlobalize::Translatable
end

::Spree::ProductProperty.prepend(Spree::ProductPropertyDecorator) if ::Spree::ProductProperty.included_modules.exclude?(Spree::ProductPropertyDecorator)

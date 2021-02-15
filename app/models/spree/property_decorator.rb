module Spree::PropertyDecorator
  def self.prepended(base)
    base.translates :name, :presentation
  end

  Spree::Property.include SpreeGlobalize::Translatable
end

::Spree::Property.prepend(Spree::PropertyDecorator)

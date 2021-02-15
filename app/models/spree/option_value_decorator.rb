module Spree::OptionValueDecorator
  def self.prepended(base)
    base.translates :name, :presentation
  end

  Spree::OptionValue.include SpreeGlobalize::Translatable
end

::Spree::OptionValue.prepend(Spree::OptionValueDecorator)

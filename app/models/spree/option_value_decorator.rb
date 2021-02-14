module Spree::OptionValueDecorator
  def self.prepended(base)
    base.extend Mobility
    base.translates :name, :presentation
  end

  Spree::OptionValue.include SpreeGlobalize::Translatable
end

::Spree::OptionValue.prepend(Spree::OptionValueDecorator)

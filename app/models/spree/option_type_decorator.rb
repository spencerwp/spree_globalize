module Spree::OptionTypeDecorator
  def self.prepended(base)
    base.translates :name, :presentation
  end

  Spree::OptionType.include SpreeGlobalize::Translatable
end

::Spree::OptionType.prepend(Spree::OptionTypeDecorator) if ::Spree::OptionType.included_modules.exclude?(Spree::OptionTypeDecorator)

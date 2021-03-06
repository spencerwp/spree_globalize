module Spree::PromotionDecorator
  def self.prepended(base)
    base.translates :name, :description
  end

  Spree::Promotion.include SpreeGlobalize::Translatable
end

::Spree::Promotion.prepend(Spree::PromotionDecorator) if ::Spree::Promotion.included_modules.exclude?(Spree::PromotionDecorator)

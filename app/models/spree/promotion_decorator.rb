module Spree::PromotionDecorator
  def self.prepended(base)
    base.extend Mobility
    base.translates :name, :description
  end

  Spree::Promotion.include SpreeGlobalize::Translatable
end

::Spree::Promotion.prepend(Spree::PromotionDecorator)

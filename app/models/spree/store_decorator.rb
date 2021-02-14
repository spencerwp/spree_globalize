module Spree::StoreDecorator
  def self.prepended(base)
    base.extend Mobility
    base.translates :name, :meta_description, :meta_keywords, :seo_title
  end

  Spree::Store.include SpreeGlobalize::Translatable
end

::Spree::Store.prepend(Spree::StoreDecorator)

module GiantBomb
  class Promo < Resource
    has_resource 'promo', plural: 'promos', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-28
    # http://www.giantbomb.com/api/documentation#toc-0-29
    #
    @@fields = [
      :api_detail_url, # URL pointing to the promo detail resource
      :date_added,     # Date the promo was added to Giant Bomb
      :deck,           # Brief summary of the promo
      :id,             # Unique ID of the promo
      :image,          # Main image of the promo
      :link,           # The link that promo points to
      :name,           # Name of the promo
      :resource_type,  # The type of resource the promo is pointing towards
      :user            # Author of the promo
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

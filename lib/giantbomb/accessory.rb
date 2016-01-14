module GiantBomb
  class Accessory < Resource
    has_resource 'accessory', plural: 'accessories', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-2
    # http://www.giantbomb.com/api/documentation#toc-0-3
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the accessory detail resource
      :date_added,        # Date the accessory was added to Giant Bomb
      :date_last_updated, # Date the accessory was last updated on Giant Bomb
      :deck,              # Brief summary of the accessory
      :description,       # Description of the accessory
      :id,                # Unique ID of the accessory
      :image,             # Main image of the accessory
      :name,              # Name of the accessory
      :site_detail_url    # URL pointing to the accessory on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

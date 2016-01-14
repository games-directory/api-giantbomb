module GiantBomb
  class Region < Resource
    has_resource 'region', plural: 'regions', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-32
    # http://www.giantbomb.com/api/documentation#toc-0-33
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the region detail resource
      :date_added,        # Date the region was added to Giant Bomb
      :date_last_updated, # Date the region was last updated on Giant Bomb
      :deck,              # Brief summary of the region
      :description,       # Description of the region
      :id,                # Unique ID of the region
      :image,             # Main image of the region
      :name,              # Name of the region
      :rating_boards,     # Region in the region
      :site_detail_url    # URL pointing to the region on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

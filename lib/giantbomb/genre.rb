module GiantBomb
  class Genre < Resource
    has_resource 'genre', plural: 'genres', id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-18
    # http://www.giantbomb.com/api/documentation#toc-0-19
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the genre detail resource
      :date_added,        # Date the genre was added to Giant Bomb
      :date_last_updated, # Date the genre was last updated on Giant Bomb
      :deck,              # Brief summary of the genre
      :description,       # Description of the genre
      :id,                # Unique ID of the genre
      :image,             # Main image of the genre
      :site_detail_url,   # Name of the genre
      :name               # URL pointing to the genre on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

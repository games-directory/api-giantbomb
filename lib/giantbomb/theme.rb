module GiantBomb
  class Theme < Resource
    has_resource 'theme', plural: 'themes', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-39
    # http://www.giantbomb.com/api/documentation#toc-0-40
    #
    @@fields = [
      :api_detail_url, # URL pointing to the theme detail resource
      :id,             # Unique ID of the theme
      :name,           # Name of the theme
      :site_detail_url # URL pointing to the theme on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

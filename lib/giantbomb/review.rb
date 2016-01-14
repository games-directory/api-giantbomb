module GiantBomb
  class Review < Resource
    has_resource 'review', plural: 'reviews', id: '1900'

    # http://www.giantbomb.com/api/documentation#toc-0-36
    # http://www.giantbomb.com/api/documentation#toc-0-37
    #
    @@fields = [
      :api_detail_url, # URL pointing to the review detail resource
      :deck,           # Brief summary of the review
      :description,    # Description of the review
      :dlc_name,       # Name of the Downloadable Content package
      :game,           # Game the review is for
      :publish_date,   # Date the review was published on Giant Bomb
      :release,        # Release of game for review
      :reviewer,       # Name of the review's author
      :score,          # The score given to the game on a scale of 1 to 5
      :site_detail_url # URL pointing to the review on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

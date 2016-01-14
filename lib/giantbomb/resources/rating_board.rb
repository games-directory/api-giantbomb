module GiantBomb
  class RatingBoard < Resource
    has_resource 'rating_board', plural: 'rating_boards', id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-30
    # http://www.giantbomb.com/api/documentation#toc-0-31
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the rating_board detail resource
      :date_added,        # Date the rating_board was added to Giant Bomb
      :date_last_updated, # Date the rating_board was last updated on Giant Bomb
      :deck,              # Brief summary of the rating_board
      :description,       # Description of the rating_board
      :id,                # Unique ID of the rating_board
      :image,             # Main image of the rating_board
      :name,              # Name of the rating_board
      :region,            # Region the rating_board is responsible for
      :site_detail_url    # URL pointing to the rating_board on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

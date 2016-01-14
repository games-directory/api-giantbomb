module GiantBomb
  class GameRating < Resource
    has_resource 'game_rating', plural: 'game_ratings', id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-16
    # http://www.giantbomb.com/api/documentation#toc-0-17
    #
    @@fields = [
      :api_detail_url, # URL pointing to the game_rating detail resource
      :id,             # Unique ID of the game_rating
      :image,          # Main image of the game_rating
      :name,           # Name of the game_rating
      :rating_board    # Rating board that issues this game_rating
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

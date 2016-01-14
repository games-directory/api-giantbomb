module GiantBomb
  class UserReview < Resource
    has_resource 'user_review', plural: 'user_reviews', id: '2200'

    # http://www.giantbomb.com/api/documentation#toc-0-42
    # http://www.giantbomb.com/api/documentation#toc-0-43
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the review detail resource
      :date_added,        # Date the user_review was added to Giant Bomb
      :date_last_updated, # Date the user_review was last updated on Giant Bomb
      :deck,              # Brief summary of the user_review
      :description,       # Description of the user_review
      :game,              # Game the user_review is for
      :reviewer,          # Name of the review's author
      :score,             # The score given to the game on a scale of 1 to 5
      :site_detail_url    # URL pointing to the user_review on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

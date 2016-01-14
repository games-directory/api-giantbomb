module GiantBomb
  class Release < Resource
    has_resource 'release', plural: 'releases', id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-34
    # http://www.giantbomb.com/api/documentation#toc-0-35
    #
    @@fields = [
      :api_detail_url,           # URL pointing to the release detail resource
      :date_added,               # Date the release was added to Giant Bomb
      :date_last_updated,        # Date the release was last updated on Giant Bomb
      :deck,                     # Brief summary of the release
      :description,              # Description of the release
      :developers,               # Companies who developed the release
      :expected_release_day,     # Expected day the release will be released. The month is represented numerically. Combine with 'expected_release_month', 'expected_release_year' and 'expected_release_quarter' for Giant Bomb's best guess release date of the release. These fields will be empty if the 'release_date' field is set
      :expected_release_month ,  # Expected month the release will be released. The month is represented numerically. Combine with 'expected_release_day', expected_release_quarter' and 'expected_release_year' for Giant Bomb's best guess release date of the release. These fields will be empty if the 'release_date' field is set
      :expected_release_quarter, # Expected quarter release will be released. The quarter is represented numerically, where 1 = Q1, 2 = Q2, 3 = Q3, and 4 = Q4. Combine with 'expected_release_day', 'expected_release_month' and 'expected_release_year' for Giant Bomb's best guess release date of the release. These fields will be empty if the 'release_date' field is set
      :expected_release_year,    # Expected year release will be released. Combine with 'expected_release_day', 'expected_release_month' and 'expected_release_quarter' for Giant Bomb's best guess release date of the game. These fields will be empty if the 'release_date' field is set
      :game,                     # Game the release is for
      :game_rating,              # Rating of the release
      :id,                       # Unique ID of the release
      :image,                    # Main image of the release
      :images,                   # List of images associated to the release
      :maximum_players,          # Maximum player
      :minimum_players,          # Minimum player
      :multiplayer_features,     # Multiplayer feature
      :name,                     # Name of the release
      :platform,                 # Platform of the release
      :product_code_type,        # The type of product code the release has (ex. UPC/A, ISBN-10, EAN-13)
      :product_code_value,       # The release's product code
      :publishers,               # Companies who published the release
      :region,                   # Region the release is responsible for
      :release_date,             # Date of the release
      :resolutions,              # Resolutions availabl
      :singleplayer_features,    # Singleplayer feature
      :sound_systems,            # Sound system
      :site_detail_url,          # URL pointing to the release on Giant Bomb
      :widescreen_support        # Widescreen support
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

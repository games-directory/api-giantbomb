# [hd_url, high_url, low_url] = This URLs will not be usable from a web-browser.
# You must use GiantBomb' embed player to play their videos on any other web site. See embed_player below.
# For apps you must have a registered User Agent to load and play their videos. Contact edgework@giantbomb.com to do that

module GiantBomb
  class Video < Resource
    has_resource 'video', plural: 'videos', id: '2300'

    # http://www.giantbomb.com/api/documentation#toc-0-44
    # http://www.giantbomb.com/api/documentation#toc-0-45
    #
    @@fields = [
      :api_detail_url,  # URL pointing to the video detail resource
      :deck,            # Brief summary of the video
      :hd_url,          # URL to the HD version of the video
      :high_url,        # URL to the High Res version of the video
      :low_url,         # URL to the Low Res version of the video
      :embed_player,    # URL for video embed player. To be inserted into an iFrame. You can add ?autoplay=true to auto-play. See http://www.giantbomb.com/api/video-embed-sample/ for more information on using the embed player.
      :id,              # Unique ID of the video
      :image,           # Image associated with the video
      :length_seconds,  # Length (in seconds) of the video
      :name,            # Title of the video
      :publish_date,    # Date the video was published on Giant Bomb
      :site_detail_url, # URL pointing to the video on Giant Bomb
      :url,             # The video's filename
      :user,            # Author of the video
      :youtube_id       # Youtube ID for the video
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

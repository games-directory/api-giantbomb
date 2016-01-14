module GiantBomb
  class VideoType < Resource
    has_resource 'video_type', plural: 'video_types', id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-46
    # http://www.giantbomb.com/api/documentation#toc-0-47
    #
    @@fields = [
      :api_detail_url, # URL pointing to the video_type detail resource.
      :deck,           # Brief summary of the video_type.
      :id,             # Unique ID of the video_type.
      :name,           # Name of the video_type.
      :site_detail_url # URL pointing to the video_type on Giant Bomb.
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

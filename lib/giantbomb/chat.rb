module GiantBomb
  class Chat < Resource
    has_resource 'chat', plural: 'chats', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-6
    # http://www.giantbomb.com/api/documentation#toc-0-7
    #
    @@fields = [
      :api_detail_url,    # URL pointing to the chat detail resource
      :channel_name,      # Name of the video streaming channel associated with the chat
      :deck,              # Brief summary of the chat
      :image,             # Main image of the chat
      :password,          # Chat password
      :site_detail_url,   # URL pointing to the chat on Giant Bomb
      :title              # Title of the chat
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

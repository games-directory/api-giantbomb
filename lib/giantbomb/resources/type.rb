module GiantBomb
  class Type < Resource
    has_resource 'types', plural: nil, id: nil

    # http://www.giantbomb.com/api/documentation#toc-0-41
    #
    @@fields = [
      :detail_resource_name, # The name of the type's detail resource
      :id,                   # Unique ID of the type
      :list_resource_name    # The name of the type's list resource
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end

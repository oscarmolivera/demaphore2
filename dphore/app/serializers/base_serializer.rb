class BaseSerializer
  include JSONAPI::Serializer
  attributes :created_at, :updated_at
end

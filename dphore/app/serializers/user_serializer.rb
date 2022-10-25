class UserSerializer < BaseSerializer
  include JSONAPI::Serializer
  attributes :email
end

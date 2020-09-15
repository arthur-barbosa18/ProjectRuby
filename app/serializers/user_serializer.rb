class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :email, :roles
end

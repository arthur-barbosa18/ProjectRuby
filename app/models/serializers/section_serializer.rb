class SectionSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description
end

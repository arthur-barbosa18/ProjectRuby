module PaperTrail
  class Version < ActiveRecord::Base
    include PaperTrail::VersionConcern
  end
end
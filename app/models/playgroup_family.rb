class PlaygroupFamily < ActiveRecord::Base
  belongs_to :family
  belongs_to :playgroup
end


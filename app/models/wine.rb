class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains

    has_many :oenologist_wines
    has_many :oenologists, through: :oenologist_wines

end


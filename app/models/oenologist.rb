class Oenologist < ApplicationRecord
    has_many :oenologist_magazines
    has_many :magazines, through: :oenologist_magazines

    has_many :oenologist_wines
    has_many :wines, through: :oenologist_wines

end

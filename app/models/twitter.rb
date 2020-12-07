class Twitter < ApplicationRecord
    include PgSearch
    has_many :comments
    pg_search_scope :search_by_term, against: [:tilte, :desc],
    using: {
        tsearch: {
            any_word: true,
            prefix: true
        }
    }

end

class Quote < ApplicationRecord
    validates :name, presence: true

    belongs_to :company
    belongs_to :user 

    after_create_commit -> { broadcast_prepend_later_to [self.company, 'quotes'], partial:'quotes/quote', locals: { quote: self }, target:'quotes' }
    after_update_commit -> { broadcast_replace_later_to [self.company, 'quotes'], partial:'quotes/quote', locals: { quote: self }, target:"quote_#{self.id}" }
    after_destroy_commit -> { broadcast_remove_to [self.company, 'quotes'], target:"quote_#{self.id}" }
end

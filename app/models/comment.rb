class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  # without reject_if: :all_blank, cannot pass "creates a comment with an existing user"
  accepts_nested_attributes_for :user, reject_if: :all_blank # impotant to pass comments_spec "creates a comment and a new user"
end

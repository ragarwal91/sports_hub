require 'rails_helper'

describe Comment do
  let(:comment) {Comment.create(
    content: "hi"
    )}

    it {is_expected.to have_db_column :content}
    it {is_expected.to belong_to :user}
    it {is_expected.to belong_to :team}
end

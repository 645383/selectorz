require 'rails_helper'

RSpec.describe Sector, type: :model do
  it { is_expected.to have_and_belong_to_many(:users) }
  it { is_expected.to belong_to(:parent).class_name('Sector').optional }
  it { is_expected.to have_many(:children).class_name('Sector').with_foreign_key('parent_id') }
  it { is_expected.to validate_presence_of(:name) }
end

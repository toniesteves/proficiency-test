require 'rails_helper'

RSpec.describe Classroom, :type => :model do

  it { is_expected.to validate_presence_of(:entry_at) }

  it { should belong_to(:student) }
  it { should belong_to(:course) }


end

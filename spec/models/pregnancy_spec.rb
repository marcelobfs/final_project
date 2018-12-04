require 'rails_helper'

RSpec.describe Pregnancy, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:cattle) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:earring_id) }

    it { should validate_presence_of(:earring_id) }

    it { should validate_length_of(:earring_id).is_at_least(2).is_at_most(4) }
      
    end
end

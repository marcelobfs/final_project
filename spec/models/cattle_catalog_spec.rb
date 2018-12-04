require 'rails_helper'

RSpec.describe CattleCatalog, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:pregnancies) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end

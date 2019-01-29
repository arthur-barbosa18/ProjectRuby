#require 'spec_helper'
require "rails_helper"

describe Section do
  let(:section_instance) { build(:section) }

  it 'has a valid factory' do
    expect(section_instance).to be_valid
  end

  describe 'ActiveModel validations' do
    it { expect(section_instance).to validate_presence_of(:description) }
    it { expect(section_instance).to validate_presence_of(:name) }
  end
end
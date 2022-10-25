# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BaseSerializer, type: :serializer do
  include JsonHelpers

  let(:resource) { FactoryBot.create(:user) }
  let(:serialized_resource) { described_class.new(resource).as_json }

  subject { serialized_resource }

  it 'has an ID that matches with resource ID' do
    expect(load_data(subject.to_json)['data']['id'].to_i).to eq(resource.id)
  end

  it 'has a created date time of the resource' do
    value = load_data(subject.to_json)['data']['attributes']['created_at']
    expect(value).to eq(resource.created_at.utc.to_json.gsub("\"", ''))
  end

  it 'has an updated date time of the resource' do
    value = load_data(subject.to_json)['data']['attributes']['updated_at']
    expect(value).to eq(resource.updated_at.utc.to_json.gsub("\"", ''))
  end
end

# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Conversejs::Rails, type: :request do
  it 'has a version number' do
    expect(Conversejs::Rails::VERSION).not_to be_nil
  end

  it 'is a valid module' do
    expect(described_class).to be_a(Module)
  end

  describe 'Rails assets' do
    it 'can access the converse.js javascript file' do
      get '/assets/converse.js'
      assert_response :success
    end

    it 'can access the converse.js stylesheet file' do
      get '/assets/converse.css'
      assert_response :success
    end

    it 'converse.js javascript file is in the expected version' do
      get '/assets/converse.js'
      assert_match(/Version: 3\.3\.4/, response.body)
    end
  end
end

class FeaturesController < ApplicationController
  require 'will_paginate/array'
  def index
    features = Feature.get_list_features(params[:mag_type])[:data]
    @features = features.paginate(page: params[:page], per_page: 15)
  end

  def create_comment
  end
  def comments
    @feature = Feature.comments(params[:id])
  end
end

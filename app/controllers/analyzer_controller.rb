# frozen_string_literal: true

class AnalyzerController < ApplicationController
  def create
    render json: text.blank? ? default_message : analyzed_response
  end

  private

  def text
    params[:text]
  end

  def default_message
    { message: "This is sentiment analyzer. GET or POST this endpoint with 'text' param and get sentiment analysis" }
  end

  def analyzed_response
    Analyzer.call(text)
  end
end

# frozen_string_literal: true

class AnalyzerController < ApplicationController
  def create
    render json: Analyzer.call(text)
  end

  private

  def text
    params[:text]
  end
end

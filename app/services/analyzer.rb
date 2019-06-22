# frozen_string_literal: true

class Analyzer
  attr_reader :text, :analyzer
  def initialize(text)
    @text = text
    @analyzer = Sentimental.new(threshold: 0.1).tap(&:load_defaults)
  end

  def self.call(text)
    new(text).call
  end

  def call
    {
      score: analyzer.score(text).round(4),
      sentiment: analyzer.sentiment(text)
    }
  end
end

class PagesController < ApplicationController
  before_action :authorize, only: [:welcome ]

  def welcome
  end
end

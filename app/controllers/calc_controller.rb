class CalcController < ApplicationController

  def index
    if params[:calc].nil?
      @answer = ''
    else
      @answer = Podcast.calc params[:calc][:dlpe], params[:calc][:prpe], params[:calc][:mrpe], params[:calc][:epy]
    end
  end

  def pod_calc

  end

end

class TroublesController < ApplicationController
  def top
  end

  def country
    @countrys = Trouble.select("country").distinct.order(country: "ASC")
  end

  def region
    @regions = Trouble.where(country: params[:country]).select("region").distinct.order(region: "ASC")
  end

  def index
    @troubles = Trouble.where(country: params[:country],region: params[:region]).order(region: "ASC")
  end

  def new
    # フォームの国の部分だけ日本語化する
    # Carmen.i18n_backend.locale = :ja
  end

  def create
    @trouble = Trouble.new(post_params)

    if @trouble.save
      redirect_to("/troubles/top")
    else
      render 'index'
    end
  end

  def subregion_options
    render partial: 'subregion_select'
  end

  private
      def post_params
        params.require(:trouble).permit(:country, :region, :continent, :description)
      end

end

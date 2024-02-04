class NoRansackCatsController < ApplicationController
  def index
    # クリアボタンを押下時
    redirect_to no_ransack_cats_path if params[:clear_search]
    @ages = Cat.pluck(:age).uniq.sort
    
    if params[:cat].present?
      # 検索ボタン押下時
      @cat = Cat.new(search_keyword_params)
      @cats = @cat.no_ransack_search
    else
      # 初期遷移時
      @cat = Cat.new
      @cats = []
    end
  end

  private

  def search_keyword_params
    params.require(:cat)
    .permit(
      :name,
      :age
    )
  end
end

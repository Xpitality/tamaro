class SeasonPricesController < AdminController

  def update
    season_price = SeasonPrice.where(id: params['id'])
    season_price.update resource_params
  end


  private

  def resource_params
    params.require(:season_price).permit([:price1, :price2, :price3, :price4, :price5])
  end
end

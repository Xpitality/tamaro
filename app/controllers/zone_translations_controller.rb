class ZoneTranslationsController < ApplicationController

  def update
    @zone_translation = ZoneTranslation.find params['id']
    @zone_translation.update zone_translation_params
  end

  private

  def zone_translation_params
    params.require(:zone_translation).permit([:name, :description, :price, :price_table])
  end
end

class ZonesController < AdminController

  def index
    @zones = Zone.all
  end


end

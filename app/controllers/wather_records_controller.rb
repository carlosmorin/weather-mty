class WatherRecordsController < ApplicationController

  def index
    @wather_records = WatherRecord.all
    
    sort_collection if params[:sort_by].present?
    
    render json: @wather_records
  end

  private
    
    def sort_collection
      order = params[:order].present? ? params[:order] : :asc 
      sort_params = "#{params[:sort_by]}  #{order.upcase}"
      @wather_records = WatherRecord.all.order(sort_params)
    end
end

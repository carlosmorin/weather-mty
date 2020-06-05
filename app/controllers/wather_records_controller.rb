class WatherRecordsController < ApplicationController

  def index
    @wather_records = WatherRecord.all
    
    sort_collection if params[:sort_by].present?
    find_by_type if params[:find].present?
    
    render json: @wather_records
  end

  private
    
    def sort_collection
      order = params[:order].present? ? params[:order] : :asc 
      sort_params = "#{params[:sort_by]}  #{order.upcase}"
      @wather_records = WatherRecord.all.order(sort_params)
    end

    def find_by_type
      if params[:find] == "lower"
        type = :desc
      elsif params[:find] == "highest"
        type = :asc
      end
      
      sort_params = "temp #{type.upcase}"
      @wather_records = WatherRecord.all.order(sort_params).last
    end
end

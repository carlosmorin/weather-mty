class WatherRecordsController < ApplicationController
  before_action :set_wather_record, only: [:show, :update, :destroy]

  # GET /wather_records
  def index
    @wather_records = WatherRecord.all

    render json: @wather_records
  end

  # GET /wather_records/1
  def show
    render json: @wather_record
  end

  # POST /wather_records
  def create
    @wather_record = WatherRecord.new(wather_record_params)

    if @wather_record.save
      render json: @wather_record, status: :created, location: @wather_record
    else
      render json: @wather_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wather_records/1
  def update
    if @wather_record.update(wather_record_params)
      render json: @wather_record
    else
      render json: @wather_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wather_records/1
  def destroy
    @wather_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wather_record
      @wather_record = WatherRecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wather_record_params
      params.require(:wather_record).permit(:city_code, :city_name, :status, :description, :temp)
    end
end

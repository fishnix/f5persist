class F5PersistRecordsController < ApplicationController
  # GET /f5_persist_records
  # GET /f5_persist_records.json
  def index
    @f5_persist_records = F5PersistRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @f5_persist_records }
    end
  end

  # GET /f5_persist_records/1
  # GET /f5_persist_records/1.json
  def show
    @f5_persist_record = F5PersistRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @f5_persist_record }
    end
  end

  # GET /f5_persist_records/new
  # GET /f5_persist_records/new.json
  def new
    @f5_persist_record = F5PersistRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @f5_persist_record }
    end
  end

  # GET /f5_persist_records/1/edit
  def edit
    @f5_persist_record = F5PersistRecord.find(params[:id])
  end

  # POST /f5_persist_records
  # POST /f5_persist_records.json
  def create
    @f5_persist_record = F5PersistRecord.new(params[:f5_persist_record])

    respond_to do |format|
      if @f5_persist_record.save
        format.html { redirect_to @f5_persist_record, notice: 'F5 persist record was successfully created.' }
        format.json { render json: @f5_persist_record, status: :created, location: @f5_persist_record }
      else
        format.html { render action: "new" }
        format.json { render json: @f5_persist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /f5_persist_records/1
  # PUT /f5_persist_records/1.json
  def update
    @f5_persist_record = F5PersistRecord.find(params[:id])

    respond_to do |format|
      if @f5_persist_record.update_attributes(params[:f5_persist_record])
        format.html { redirect_to @f5_persist_record, notice: 'F5 persist record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @f5_persist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f5_persist_records/1
  # DELETE /f5_persist_records/1.json
  def destroy
    @f5_persist_record = F5PersistRecord.find(params[:id])
    @f5_persist_record.destroy

    respond_to do |format|
      format.html { redirect_to f5_persist_records_url }
      format.json { head :no_content }
    end
  end
end

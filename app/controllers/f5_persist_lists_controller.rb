class F5PersistListsController < ApplicationController
  # GET /f5_persist_lists
  # GET /f5_persist_lists.json
  def index
    @f5_persist_lists = F5PersistList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @f5_persist_lists }
    end
  end

  # GET /f5_persist_lists/1
  # GET /f5_persist_lists/1.json
  def show
    @f5_persist_list = F5PersistList.find(params[:id])
    @f5_persist_records = @f5_persist_list.f5_persist_records

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @f5_persist_list }
    end
  end

  # GET /f5_persist_lists/new
  # GET /f5_persist_lists/new.json
  def new
    @f5_persist_list = F5PersistList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @f5_persist_list }
    end
  end

  # GET /f5_persist_lists/1/edit
  def edit
    @f5_persist_list = F5PersistList.find(params[:id])
  end

  # POST /f5_persist_lists
  # POST /f5_persist_lists.json
  #def create
  #  @f5_persist_list = F5PersistList.new(params[:f5_persist_list])
  #
  #  respond_to do |format|
  #    if @f5_persist_list.save
  #      format.html { redirect_to @f5_persist_list, notice: 'F5 persist list was successfully created.' }
  #      format.json { render json: @f5_persist_list, status: :created, location: @f5_persist_list }
  #    else
  #      format.html { render action: "new" }
  #      format.json { render json: @f5_persist_list.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  def create     
     file_param = params[:create][:file]
     list_name = params[:create][:name]
     
     filedata = file_param.read

     @data = F5PersistList.create(:name => list_name, :content => filedata)
          
     parse_persist_records(filedata).each do |c|
       persistrecord = F5PersistRecord.create(:f5_persist_list_id => @data.id, :tmm => c[:tmm], :mode => c[:mode], :value => c[:value],
                                        :age => c[:age], :virtual_name => c[:virtual_name], :virtual_addr => c[:virtual_addr],
                                        :node_addr => c[:node_addr], :pool_name => c[:pool_name], :client_addr => c[:client_addr])
     end
     
     redirect_to f5_persist_lists_path, :notice => 'Records successfully added.'
  end


  # DELETE /f5_persist_lists/1
  # DELETE /f5_persist_lists/1.json
  def destroy
    @f5_persist_list = F5PersistList.find(params[:id])
    @f5_persist_list.destroy

    respond_to do |format|
      format.html { redirect_to f5_persist_lists_url }
      format.json { head :no_content }
    end
  end
end

class MovesController < ApplicationController
  # GET /moves
  # GET /moves.json
  def index
    @moves = Move.all

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @moves }
    end
  end

  # GET /moves/1
  # GET /moves/1.json
  def show
    @move = Move.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @move }
    end
  end

  # GET /moves/new
  # GET /moves/new.json
  def new
    @move = Move.new

    respond_to do |format|
      format.html # new.html.erb
      format.json  { render :json => @move }
    end
  end

  # GET /moves/1/edit
  def edit
    @move = Move.find(params[:id])
  end

  # POST /moves
  # POST /moves.json
  def create
    @move = Move.new(params[:move])

    respond_to do |format|
      if @move.save
        flash[:notice] = 'Move was successfully created.'
        format.html { redirect_to(@move) }
        format.json  { render :json => @move, :status => :created, :location => @move }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @move.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moves/1
  # PUT /moves/1.json
  def update
    @move = Move.find(params[:id])

    respond_to do |format|
      if @move.update_attributes(params[:move])
        flash[:notice] = 'Move was successfully updated.'
        format.html { redirect_to(@move) }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @move.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moves/1
  # DELETE /moves/1.json
  def destroy
    @move = Move.find(params[:id])
    @move.destroy

    respond_to do |format|
      format.html { redirect_to(moves_url) }
      format.json  { head :ok }
    end
  end
end

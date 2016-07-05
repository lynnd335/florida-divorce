class ChecklistsController < ApplicationController
  skip_before_action :verify_authenticity_token
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]


  # GET /checklists
  # GET /checklists.json
  def index
    @checklists = Checklist.all
  end

  # GET /checklists/1
  # GET /checklists/1.json
  def show
  end

  # GET /checklists/new
  def new
    @checklist = Checklist.new
  end

  # GET /checklists/1/edit
  def edit
  end

  # POST /checklists
  # POST /checklists.json
  def create
    @checklist = Checklist.new(checklist_params)

    respond_to do |format|
      if @checklist.save
        format.html { redirect_to @checklist, notice: 'Checklist was successfully created.' }
        format.json { render :show, status: :created, location: @checklist }
      else
      
        format.html { render :new }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklists/1
  # PATCH/PUT /checklists/1.json
  def update
    respond_to do |format|
      if @checklist.update(checklist_params)
        format.html { redirect_to @checklist, notice: 'Checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @checklist }
      else
        format.html { render :edit }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklists/1
  # DELETE /checklists/1.json
  def destroy
    @checklist.destroy
    respond_to do |format|
      format.html { redirect_to checklists_url, notice: 'Checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist
      @checklist = Checklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_params
      params.require(:checklist).permit(:Client_Name, :Grounds, :Petitioner_Preg_Aff, :Pregnancy_Affidavit_Respondent, :Waiver_Petitioner_s, :Waiver_Respondent_s, :MSA, :Residency_Proof, :Social_Security_Petitioner, :Social_Security_Respondent, :A, :Discovery_Waiver_Signed_by_Both, :Discovery_Waiver_Signed_by_Petitioner, :Discovery_Waiver_Signed_by_Respondent, :Financial_Affidavit_Petitioner, :Financial_Affidavit_Respondent, :Child_Custody_Affidavit, :Parenting_Course_Husband, :Parenting_Course_Wife, :Parenting_Plan, :Gudelines, :Addendum, :Notes, :Client_Email_Address, :Send_Link_Email)
    end
end

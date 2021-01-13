class ReportsController < ApplicationController  
   
    def index 
        @reports = Report.all 
    end 

    def show 
        @report = Report.find(params[:id])
    end

    def new 
        @report = Report.new 
    end 

    def create 
        @report = Report.create(report_params)  
        if @report.valid?
            redirect_to report_path(@report) 
        else 
            flash[:errors] = @report.errors.full_messages
            redirect_to new_report_path()
        end 
    end 

    def edit 
    end

    def uptade 
    end 

    def destroy 
    end 

    private 

    def report_params 
        params.require(:report).permit(:reporter, :image, :gender, :location, :description, :start_date, :end_date )
    end 
end

class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        signup = Signup.create(signups_params)
        redirect_to camper_path(signup.camper)
    end

    private

    def signups_params
        params.required(:signup).permit!
    end
end
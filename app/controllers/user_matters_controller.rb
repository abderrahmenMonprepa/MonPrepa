class UserMattersController < InheritedResources::Base

  private

    def user_matter_params
      params.require(:user_matter).permit(:section, :level, :matter)
    end
end


require "rails_helper"

RSpec.describe HomeController, type: :routing do
  context "root route" do 
   it { should route(:get, "/").to(action: :index) } 
  end
end

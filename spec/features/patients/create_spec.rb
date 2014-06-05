  require 'spec_helper'

   describe "Creating patients" do
      it "redirects to the patients index page on success" do
        visit "/patients"
        expect(page).to have_content("New Patient")
        
        fill_in "Name", with: "Ronald McDonald"
        click_button "New Patient"
        
        expect(page).to have_content("Patient")
      end
     
     it "displays an error when the patient list has no name" do
       expect(Patient.count).to eq(0)
      end
   end

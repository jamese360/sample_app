require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit home_path }

    it { should have_selector('h1',    text: 'Robo Eye') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

   describe "Map page" do
    before { visit map_path }

    it { should have_selector('h1',    text: 'Map') }
    it { should have_selector('title', text: full_title('Map')) }
  end




  describe "Africa page" do
    before { visit africa_path }

    it { should have_selector('h1',    text: 'Africa') }
    it { should have_selector('title', text: full_title('Africa')) }
  end

  describe "Asia page" do
    before { visit asia_path }

    it { should have_selector('h1',    text: 'Asia') }
    it { should have_selector('title', text: full_title('Asia')) }
  end

  describe "Europe page" do
    before { visit europe_path }

    it { should have_selector('h1',    text: 'Europe') }
    it { should have_selector('title', text: full_title('Europe')) }
  end

  describe "Australia page" do
    before { visit australia_path }

    it { should have_selector('h1',    text: 'Australia') }
    it { should have_selector('title', text: full_title('Australia')) }
  end

  describe "North America page" do
    before { visit northAmerica_path }

    it { should have_selector('h1',    text: 'North America') }
    it { should have_selector('title', text: full_title('North America')) }
  end

  describe "South America page" do
    before { visit southAmerica_path }

    it { should have_selector('h1',    text: 'South America') }
    it { should have_selector('title', text: full_title('South America')) }
  end



  describe "Uav page" do
    before { visit uav_path }

    it { should have_selector('h1',    text: 'UAVs') }
    it { should have_selector('title', text: full_title('UAVs')) }
  end

  describe "Ugv page" do
    before { visit ugv_path }

    it { should have_selector('h1',    text: 'UGVs') }
    it { should have_selector('title', text: full_title('UGVs')) }
  end

  describe "Uuv page" do
    before { visit uuv_path }

    it { should have_selector('h1',    text: 'UUVs') }
    it { should have_selector('title', text: full_title('UUVs')) }
  end

end

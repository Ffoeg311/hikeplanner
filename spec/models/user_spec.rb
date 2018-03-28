describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end
  describe 'validations' do
    it 'has a valid factory' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end


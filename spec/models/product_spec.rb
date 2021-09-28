RSpec.describe Product, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:product)).to be_valid
    end
  end
end


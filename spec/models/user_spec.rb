describe User do
  subject { FactoryGirl.create(:user) }
  describe '#webauth_groups' do
    it 'splits groups on the pipe character' do
      subject.webauth_groups = 'a|b|c'
      expect(subject.webauth_groups).to match_array %w(a b c)
    end

    it 'adds users to appropriate roles when the workgroups change' do
      subject.webauth_groups = 'dlss:exhibits-admin'

      expect(subject).to be_a_superadmin
    end
  end
end

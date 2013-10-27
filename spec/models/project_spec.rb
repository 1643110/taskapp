require 'spec_helper'

describe Project do

  context 'ファーストテスト' do
    it '正常の保存できること' do
      @project = FactoryGirl.build(:project)
      expect(@project.save).to be_true
    end

    it 'プロジェクトが１つ以上であること' do
      FactoryGirl.create(:project)
      expect(Project.count).to be_>= 1
    end

  end

end

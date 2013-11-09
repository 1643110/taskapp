require 'spec_helper'

describe Project do

  context 'validation' do
    it '正常の保存できること' do
      @project = FactoryGirl.build(:project)
      expect(@project.save).to be_true
    end

    it 'プロジェクトが１つ以上であること' do
      FactoryGirl.create(:project)
      expect(Project.count).to be >= 1
    end

    it 'プロジェクトタイトルが3桁未満は登録出来ないこと' do
      @project = FactoryGirl.build(:project, title: "プロ")
      expect(@project.save).to be_false
    end

    it 'プロジェクトタイトルが3桁以上は登録出来ること' do
      @project = FactoryGirl.build(:project, title: "プロジェクトOK")
      expect(@project.save).to be_true
    end

    # it 'プロジェクトがないこと（Jenkinsでわざとテスト失敗させたいだけ）' do
    #   FactoryGirl.create(:project)
    #   expect(Project.count).to eq(0)
    # end
  end

end

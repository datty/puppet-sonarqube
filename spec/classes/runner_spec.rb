require 'spec_helper'

describe 'sonarqube::runner' do
  context 'when installing with default config' do
    it { is_expected.to create_class('sonarqube::runner::install') }
    it { is_expected.to contain_archive('download-sonar-runner').with_source('http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip') }
    it { is_expected.to contain_file('/opt/sonar-runner') }
  end

  context 'when running with default config' do
    it { is_expected.to create_class('sonarqube::runner::config') }
    it { is_expected.to contain_file('/usr/local/sonar-runner-2.4/conf/sonar-runner.properties') }
  end
end

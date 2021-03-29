# frozen_string_literal: true

require 'spec_helper'

##
# This spec is maybe overly thorough, but whatever.
RSpec.describe ChangeHealthcare::ProfessionalClaims::SwaggerClient::ClaimSubmissionRequest do
  context 'with a known-good request' do
    before(:all) do
      file_contents = IO.binread('spec/examples/requests/basic_request.json')
      @parsed_json = JSON.parse(file_contents, symbolize_names: true)
    end
    subject(:request) { described_class.new.build_from_hash(@parsed_json) }

    specify { expect { subject }.to_not raise_error }

    its(:class) { should eq described_class }

    it('is equal to a dup') { should be == subject.dup }
    it { should be_valid }
    it { should be_a(described_class) }
    its(:control_number) { should be_a(String) & eq('000000001') }
    its(:trading_partner_service_id) { should be_a(String) & eq('9496') }

    describe '#claim_information' do
      subject { request.claim_information }

      it { should_not be_nil }
      it { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::ClaimInformation) }
    end

    describe '#dependent' do
      subject(:dependent) { request.dependent }
      it { should_not be_nil }
      it { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Dependent) }
      its(:first_name) { should eq('janeone') }
      its(:last_name) { should eq('doeOne') }
      its(:gender) { should eq('F') }
      its(:date_of_birth) { should eq('19800102') }
      its(:address) { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Address) }
    end

    describe '#providers' do
      subject { request.providers }
      it { should all be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Provider) }
      it { should all have_attributes(provider_type: eq('BillingProvider') | eq('ReferringProvider') | eq('RenderingProvider')) }
    end

    describe '#subscriber' do
      subject { request.subscriber }
      it { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Subscriber) }
    end

    describe '#submitter' do
      subject { request.submitter }
      it { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Submitter) }
      its(:organization_name) { should eq('REGIONAL PPO NETWORK') }
      its(:contact_information) { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::ContactInformation) }
    end

    describe '#receiver' do
      subject { request.receiver }

      it { should be_a(ChangeHealthcare::ProfessionalClaims::SwaggerClient::Receiver) }
    end
  end
end

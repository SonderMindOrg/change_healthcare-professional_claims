# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ChangeHealthcare::ProfessionalClaims::SwaggerClient::Meta do
  let(:response_meta) do
    {
      applicationMode: 'sandbox',
      billerId: '123456',
      submitterId: '654321',
      senderId: 'Fake_Application',
      traceId: '4983521c-f1b5-747c-8c7d-9244bc19a44e'
    }
  end

  subject { described_class.new.build_from_hash(response_meta) }

  it { expect { subject}.to_not raise_error }
  its(:application_mode) { should eq 'sandbox' }
  its(:biller_id) { should eq '123456' }
  its(:submitter_id) { should eq '654321' }
  its(:sender_id) { should eq 'Fake_Application' }
  its(:trace_id) { should eq '4983521c-f1b5-747c-8c7d-9244bc19a44e' }
end

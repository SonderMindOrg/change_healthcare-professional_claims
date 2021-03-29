# frozen_string_literal: true

module ChangeHealthcare
  ##
  # This namespace module provides functionality for
  # the change healthcare professional claims V3 api.
  #
  # Documentation for the API can be accessed [here](https://developers.changehealthcare.com/api/Professional-Claims/v3#).
  module ProfessionalClaims
    class Error < StandardError; end
  end
end

require_relative './professional_claims/swagger_client'
require_relative './professional_claims/version'
require_relative './professional_claims/wrapper'

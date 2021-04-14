# frozen_string_literal: true

# #Medical Network Professional Claims v3
#
# Reference for developers
#
# OpenAPI spec version: v3
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 2.4.19
#

require 'date'

module ChangeHealthcare
  module ProfessionalClaims
    module SwaggerClient
      class ClaimSupplementalInformation
        attr_accessor(
          :adjusted_repriced_claim_number, :care_plan_oversight_number, :claim_control_number, :claim_number,
          :clia_number, :demo_project_identifier, :investigational_device_exemption_number, :mammography_certification_number,
          :medical_record_number, :medicare_crossover_reference_id, :prior_authorization_number, :referral_number, :report_information, :repriced_claim_number
        )

        # Allowed values are
        # - '1' Immediate/Urgent Care
        # - '2' Services Rendered in a Retroactive Period
        # - '3' Emergency Care
        # - '4' Client has Temporary Medicaid
        # - '5' Request from County for Second Opinion to Determine if Recipient Can Work
        # - '6' Request for Override Pending
        # - '7' Special Handling, Null
        attr_reader :service_authorization_exception_code

        class EnumAttributeValidator
          attr_reader :datatype, :allowable_values

          def initialize(datatype, allowable_values)
            @allowable_values = allowable_values.map do |value|
              case datatype.to_s
              when /Integer/i
                value.to_i
              when /Float/i
                value.to_f
              else
                value
              end
            end
          end

          def valid?(value)
            !value || allowable_values.include?(value)
          end
        end

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            adjusted_repriced_claim_number: :adjustedRepricedClaimNumber,
            care_plan_oversight_number: :carePlanOversightNumber,
            claim_control_number: :claimControlNumber,
            claim_number: :claimNumber,
            clia_number: :cliaNumber,
            demo_project_identifier: :demoProjectIdentifier,
            investigational_device_exemption_number: :investigationalDeviceExemptionNumber,
            mammography_certification_number: :mammographyCertificationNumber,
            medical_record_number: :medicalRecordNumber,
            medicare_crossover_reference_id: :medicareCrossoverReferenceId,
            prior_authorization_number: :priorAuthorizationNumber,
            referral_number: :referralNumber,
            report_information: :reportInformation,
            repriced_claim_number: :repricedClaimNumber,
            service_authorization_exception_code: :serviceAuthorizationExceptionCode
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            adjusted_repriced_claim_number: :String,
            care_plan_oversight_number: :String,
            claim_control_number: :String,
            claim_number: :String,
            clia_number: :String,
            demo_project_identifier: :String,
            investigational_device_exemption_number: :String,
            mammography_certification_number: :String,
            medical_record_number: :String,
            medicare_crossover_reference_id: :String,
            prior_authorization_number: :String,
            referral_number: :String,
            report_information: :ReportInformation,
            repriced_claim_number: :String,
            service_authorization_exception_code: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.adjusted_repriced_claim_number = attributes[:adjustedRepricedClaimNumber] if attributes.key?(:adjustedRepricedClaimNumber)

          self.care_plan_oversight_number = attributes[:carePlanOversightNumber] if attributes.key?(:carePlanOversightNumber)

          self.claim_control_number = attributes[:claimControlNumber] if attributes.key?(:claimControlNumber)

          self.claim_number = attributes[:claimNumber] if attributes.key?(:claimNumber)

          self.clia_number = attributes[:cliaNumber] if attributes.key?(:cliaNumber)

          self.demo_project_identifier = attributes[:demoProjectIdentifier] if attributes.key?(:demoProjectIdentifier)

          self.investigational_device_exemption_number = attributes[:investigationalDeviceExemptionNumber] if attributes.key?(:investigationalDeviceExemptionNumber)

          self.mammography_certification_number = attributes[:mammographyCertificationNumber] if attributes.key?(:mammographyCertificationNumber)

          self.medical_record_number = attributes[:medicalRecordNumber] if attributes.key?(:medicalRecordNumber)

          self.medicare_crossover_reference_id = attributes[:medicareCrossoverReferenceId] if attributes.key?(:medicareCrossoverReferenceId)

          self.prior_authorization_number = attributes[:priorAuthorizationNumber] if attributes.key?(:priorAuthorizationNumber)

          self.referral_number = attributes[:referralNumber] if attributes.key?(:referralNumber)

          self.report_information = attributes[:reportInformation] if attributes.key?(:reportInformation)

          self.repriced_claim_number = attributes[:repricedClaimNumber] if attributes.key?(:repricedClaimNumber)

          self.service_authorization_exception_code = attributes[:serviceAuthorizationExceptionCode] if attributes.key?(:serviceAuthorizationExceptionCode)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          service_authorization_exception_code_validator = EnumAttributeValidator.new('String',
                                                                                      %w[1 2 3 4 5 6 7])
          return false unless service_authorization_exception_code_validator.valid?(@service_authorization_exception_code)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] service_authorization_exception_code Object to be assigned
        def service_authorization_exception_code=(service_authorization_exception_code)
          validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5 6 7])
          unless validator.valid?(service_authorization_exception_code)
            raise ArgumentError,
                  %(invalid value for "service_authorization_exception_code", must be one of #{validator.allowable_values}.)
          end

          @service_authorization_exception_code = service_authorization_exception_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            adjusted_repriced_claim_number == other.adjusted_repriced_claim_number &&
            care_plan_oversight_number == other.care_plan_oversight_number &&
            claim_control_number == other.claim_control_number &&
            claim_number == other.claim_number &&
            clia_number == other.clia_number &&
            demo_project_identifier == other.demo_project_identifier &&
            investigational_device_exemption_number == other.investigational_device_exemption_number &&
            mammography_certification_number == other.mammography_certification_number &&
            medical_record_number == other.medical_record_number &&
            medicare_crossover_reference_id == other.medicare_crossover_reference_id &&
            prior_authorization_number == other.prior_authorization_number &&
            referral_number == other.referral_number &&
            report_information == other.report_information &&
            repriced_claim_number == other.repriced_claim_number &&
            service_authorization_exception_code == other.service_authorization_exception_code
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [
            adjusted_repriced_claim_number, care_plan_oversight_number, claim_control_number, claim_number, clia_number,
            demo_project_identifier, investigational_device_exemption_number, mammography_certification_number,
            medical_record_number, medicare_crossover_reference_id, prior_authorization_number, referral_number,
            report_information, repriced_claim_number, service_authorization_exception_code
          ].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)

          self.class.swagger_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                                  _deserialize(Regexp.last_match(1), v)
                                end)
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :BOOLEAN
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            temp_model = SwaggerClient.const_get(type).new
            temp_model.build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = send(attr)
            next if value.nil?

            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end
      end
    end
  end
end

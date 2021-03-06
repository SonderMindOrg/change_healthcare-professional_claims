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
      class ClaimPricingRepricingInformation
        # Allowed Values are:
        # - '1' Non-Network Professional Provider in Network Hospital
        # - '2' Emergency Care, '3' Services or Specialist not in Network
        # - '4' Out-of-Service Area
        # - '5' State Mandates
        # - '6' Other
        attr_reader :exception_code

        # Allowed Values are:
        # - '1' Procedure Followed (Compliance)
        # - '2' Not Followed - Call Not Made (Non-Compliance Call Not Made)
        # - '3' Not Medically Necessary (Non-Compliance Non-Medically Necessary)
        # - '4' Not Followed Other (Non-Compliance Other)
        # - '5' Emergency Admit to Non-Network Hospital
        attr_reader :policy_compliance_code

        # Allowed Values are:
        # - '00' Zero Pricing (Not Covered Under Contract)
        # - '01' Priced as Billed at 100%
        # - '02' Priced at the Standard Fee Schedule
        # - '03' Priced at a Contractual Percentage
        # - '04' Bundled Pricing
        # - '05' Peer Review Pricing
        # - '06' Bundled Pricing
        # - '07' Flat Rate Pricing
        # - '08' Combination Pricing
        # - '09' Maternity Pricing
        # - '10' Other Pricing
        # - '11' Lower of Cost
        # - '12' Ratio of Cost
        # - '13' Cost Reimbursed
        # - '14' Adjustment Pricing
        attr_reader :pricing_methodology_code

        # Allowed Values are:
        # - 'T1' Cannot Identify Provider as TPO (Third Party Organization) Participant
        # - 'T2' Cannot Identify Payer as TPO (Third Party Organization) Participant
        # - 'T3' Cannot Identify Insured as TPO (Third Party Organization) Participant
        # - 'T4' Payer Name or Identifier Missing
        # - 'T5' Certification Information Missing
        # - '16' Claim does not contain enough information for repricing
        attr_reader :reject_reason_code

        attr_accessor :repriced_allowed_amount, :repriced_approved_ambulatory_patient_group_amount,
                      :repriced_approved_ambulatory_patient_group_code, :repriced_saving_amount, :repricing_organization_identifier, :repricing_per_diem_or_flat_rate_amoung

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
            exception_code: :exceptionCode,
            policy_compliance_code: :policyComplianceCode,
            pricing_methodology_code: :pricingMethodologyCode,
            reject_reason_code: :rejectReasonCode,
            repriced_allowed_amount: :repricedAllowedAmount,
            repriced_approved_ambulatory_patient_group_amount: :repricedApprovedAmbulatoryPatientGroupAmount,
            repriced_approved_ambulatory_patient_group_code: :repricedApprovedAmbulatoryPatientGroupCode,
            repriced_saving_amount: :repricedSavingAmount,
            repricing_organization_identifier: :repricingOrganizationIdentifier,
            repricing_per_diem_or_flat_rate_amoung: :repricingPerDiemOrFlatRateAmoung
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            exception_code: :String,
            policy_compliance_code: :String,
            pricing_methodology_code: :String,
            reject_reason_code: :String,
            repriced_allowed_amount: :String,
            repriced_approved_ambulatory_patient_group_amount: :String,
            repriced_approved_ambulatory_patient_group_code: :String,
            repriced_saving_amount: :String,
            repricing_organization_identifier: :String,
            repricing_per_diem_or_flat_rate_amoung: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.exception_code = attributes[:exceptionCode] if attributes.key?(:exceptionCode)

          self.policy_compliance_code = attributes[:policyComplianceCode] if attributes.key?(:policyComplianceCode)

          self.pricing_methodology_code = attributes[:pricingMethodologyCode] if attributes.key?(:pricingMethodologyCode)

          self.reject_reason_code = attributes[:rejectReasonCode] if attributes.key?(:rejectReasonCode)

          self.repriced_allowed_amount = attributes[:repricedAllowedAmount] if attributes.key?(:repricedAllowedAmount)

          self.repriced_approved_ambulatory_patient_group_amount = attributes[:repricedApprovedAmbulatoryPatientGroupAmount] if attributes.key?(:repricedApprovedAmbulatoryPatientGroupAmount)

          self.repriced_approved_ambulatory_patient_group_code = attributes[:repricedApprovedAmbulatoryPatientGroupCode] if attributes.key?(:repricedApprovedAmbulatoryPatientGroupCode)

          self.repriced_saving_amount = attributes[:repricedSavingAmount] if attributes.key?(:repricedSavingAmount)

          self.repricing_organization_identifier = attributes[:repricingOrganizationIdentifier] if attributes.key?(:repricingOrganizationIdentifier)

          self.repricing_per_diem_or_flat_rate_amoung = attributes[:repricingPerDiemOrFlatRateAmoung] if attributes.key?(:repricingPerDiemOrFlatRateAmoung)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          exception_code_validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5 6])
          return false unless exception_code_validator.valid?(@exception_code)

          policy_compliance_code_validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5])
          return false unless policy_compliance_code_validator.valid?(@policy_compliance_code)

          pricing_methodology_code_validator = EnumAttributeValidator.new('String',
                                                                          %w[00 01 02 03 04 05 06 07 08 09 10 11 12 13
                                                                             14])
          return false unless pricing_methodology_code_validator.valid?(@pricing_methodology_code)

          reject_reason_code_validator = EnumAttributeValidator.new('String', %w[T1 T2 T3 T4 T5 T6])
          return false unless reject_reason_code_validator.valid?(@reject_reason_code)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] exception_code Object to be assigned
        def exception_code=(exception_code)
          validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5 6])
          unless validator.valid?(exception_code)
            raise ArgumentError,
                  %(invalid value for "exception_code", must be one of #{validator.allowable_values}.)
          end

          @exception_code = exception_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] policy_compliance_code Object to be assigned
        def policy_compliance_code=(policy_compliance_code)
          validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5])
          unless validator.valid?(policy_compliance_code)
            raise ArgumentError,
                  %(invalid value for "policy_compliance_code", must be one of #{validator.allowable_values}.)
          end

          @policy_compliance_code = policy_compliance_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] pricing_methodology_code Object to be assigned
        def pricing_methodology_code=(pricing_methodology_code)
          validator = EnumAttributeValidator.new('String',
                                                 %w[00 01 02 03 04 05 06 07 08 09 10 11 12 13 14])
          unless validator.valid?(pricing_methodology_code)
            raise ArgumentError,
                  %(invalid value for "pricing_methodology_code", must be one of #{validator.allowable_values}.)
          end

          @pricing_methodology_code = pricing_methodology_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] reject_reason_code Object to be assigned
        def reject_reason_code=(reject_reason_code)
          validator = EnumAttributeValidator.new('String', %w[T1 T2 T3 T4 T5 T6])
          unless validator.valid?(reject_reason_code)
            raise ArgumentError,
                  %(invalid value for "reject_reason_code", must be one of #{validator.allowable_values}.)
          end

          @reject_reason_code = reject_reason_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            exception_code == other.exception_code &&
            policy_compliance_code == other.policy_compliance_code &&
            pricing_methodology_code == other.pricing_methodology_code &&
            reject_reason_code == other.reject_reason_code &&
            repriced_allowed_amount == other.repriced_allowed_amount &&
            repriced_approved_ambulatory_patient_group_amount == other.repriced_approved_ambulatory_patient_group_amount &&
            repriced_approved_ambulatory_patient_group_code == other.repriced_approved_ambulatory_patient_group_code &&
            repriced_saving_amount == other.repriced_saving_amount &&
            repricing_organization_identifier == other.repricing_organization_identifier &&
            repricing_per_diem_or_flat_rate_amoung == other.repricing_per_diem_or_flat_rate_amoung
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [exception_code, policy_compliance_code, pricing_methodology_code, reject_reason_code, repriced_allowed_amount,
           repriced_approved_ambulatory_patient_group_amount, repriced_approved_ambulatory_patient_group_code, repriced_saving_amount, repricing_organization_identifier, repricing_per_diem_or_flat_rate_amoung].hash
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

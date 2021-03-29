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
      class OtherSubscriberInformation
        # Allowed Values are: 'N' No, 'W' Not Applicable, 'Y' Yes
        attr_accessor :benefits_assignment_certification_indicator

        # Allowed Values are: '11' Other Non-Federal Programs, '12' Preferred Provider Organization (PPO), '13' Point of Service (POS), '14' Exclusive Provider Organization (EPO), '15' Indemnity Insurance, '16' Health Maintenance Organization (HMO) Medicare Risk, '17' Dental Maintenance Organization, 'AM' Automobile Medical, 'BL' Blue Cross/Blue Shield, 'CH' Champus, 'CI' Commercial Insurance Co., 'DS' Disability, 'FI' Federal Employees Program, 'HM' Health Maintenance Organization, 'LM' Liability Medical, 'MA' Medicare Part A, 'MB' Medicare Part B, 'MC' Medicare Part C, 'OF' Other Federal Program, 'TV' Title V, 'VA' Veterans Affairs Plan, 'WC' Workers’ Compensation Health Claim, 'ZZ' Mutually Defined
        attr_accessor :claim_filing_indicator_code

        attr_accessor :claim_level_adjustments, :insurance_group_or_policy_number, :medicare_outpatient_adjudication,
                      :non_covered_charge_amount, :other_insured_group_name, :other_payer_billing_provider, :other_payer_name, :other_payer_referring_provider, :other_payer_rendering_provider, :other_payer_service_facility_location, :other_payer_supervising_provider, :other_subscriber_name, :patient_signature_generated_for_patient, :payer_paid_amount, :remaining_patient_liability

        # Allowed Values are: '01' Spouse, '02' Self, '19' Child, '20' Employee, '21' Unknown, '39' Organ Donor, '40' Cadaver Donor, '53' Life Partner, 'G8' Other Relationship
        attr_accessor :individual_relationship_code

        # Allowed Values are: '12' Medicare Secondary Working Aged Beneficiary or Spouse with Employer Group Health Plan, '13' Medicare Secondary End-Stage Renal Disease Beneficiary in the Mandated Coordination Period, '14' Medicare Secondary, No-fault Insurance including Auto is Primary, '15' Medicare Secondary Worker’s Compensation, '16' Medicare Secondary Public Health Service (PHS)or Other Federal Agency'41' Medicare Secondary Black Lung, '42' Medicare Secondary Veteran’s Administration, '43' Medicare Secondary Disabled Beneficiary Under Age 65 with Large Group Health Plan (LGHP), '47' Medicare Secondary, Other Liability Insurance is Primary
        attr_accessor :insurance_type_code

        # Allowed Values are: 'A' Payer Responsibility Four, 'B' Payer Responsibility Five, 'C' Payer Responsibility Six, 'D' Payer Responsibility Seven, 'E' Payer Responsibility Eight, 'F' Payer Responsibility Nine, 'G' Payer Responsibility Ten, 'H' Payer Responsibility Eleven, 'P' Primary, 'S' Secondary, 'T' Tertiary, , 'U' Unknown
        attr_accessor :payment_responsibility_level_code

        # Allowed Values are: 'I' Informed Consent to Release Medical Information for Conditions or Diagnoses Regulated by Federal Statutes, 'Y' Yes, Provider has a Signed Statement Permitting Release of Medical Billing Data Related to a Claim
        attr_accessor :release_of_information_code

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
            benefits_assignment_certification_indicator: :benefitsAssignmentCertificationIndicator,
            claim_filing_indicator_code: :claimFilingIndicatorCode,
            claim_level_adjustments: :claimLevelAdjustments,
            individual_relationship_code: :individualRelationshipCode,
            insurance_group_or_policy_number: :insuranceGroupOrPolicyNumber,
            insurance_type_code: :insuranceTypeCode,
            medicare_outpatient_adjudication: :medicareOutpatientAdjudication,
            non_covered_charge_amount: :nonCoveredChargeAmount,
            other_insured_group_name: :otherInsuredGroupName,
            other_payer_billing_provider: :otherPayerBillingProvider,
            other_payer_name: :otherPayerName,
            other_payer_referring_provider: :otherPayerReferringProvider,
            other_payer_rendering_provider: :otherPayerRenderingProvider,
            other_payer_service_facility_location: :otherPayerServiceFacilityLocation,
            other_payer_supervising_provider: :otherPayerSupervisingProvider,
            other_subscriber_name: :otherSubscriberName,
            patient_signature_generated_for_patient: :patientSignatureGeneratedForPatient,
            payer_paid_amount: :payerPaidAmount,
            payment_responsibility_level_code: :paymentResponsibilityLevelCode,
            release_of_information_code: :releaseOfInformationCode,
            remaining_patient_liability: :remainingPatientLiability
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            benefits_assignment_certification_indicator: :String,
            claim_filing_indicator_code: :String,
            claim_level_adjustments: :'Array<ClaimAdjustment>',
            individual_relationship_code: :String,
            insurance_group_or_policy_number: :String,
            insurance_type_code: :String,
            medicare_outpatient_adjudication: :MedicareOutpatientAdjudication,
            non_covered_charge_amount: :String,
            other_insured_group_name: :String,
            other_payer_billing_provider: :OtherPayerBillingProvider,
            other_payer_name: :OtherPayerName,
            other_payer_referring_provider: :'Array<OtherPayerReferringProvider>',
            other_payer_rendering_provider: :OtherPayerRenderingProvider,
            other_payer_service_facility_location: :OtherPayerServiceFacilityLocation,
            other_payer_supervising_provider: :OtherPayerSupervisingProvider,
            other_subscriber_name: :OtherSubscriberName,
            patient_signature_generated_for_patient: :BOOLEAN,
            payer_paid_amount: :String,
            payment_responsibility_level_code: :String,
            release_of_information_code: :String,
            remaining_patient_liability: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.benefits_assignment_certification_indicator = attributes[:benefitsAssignmentCertificationIndicator] if attributes.key?(:benefitsAssignmentCertificationIndicator)

          self.claim_filing_indicator_code = attributes[:claimFilingIndicatorCode] if attributes.key?(:claimFilingIndicatorCode)

          if attributes.key?(:claimLevelAdjustments) && (value = attributes[:claimLevelAdjustments]).is_a?(Array)
            self.claim_level_adjustments = value
          end

          self.individual_relationship_code = attributes[:individualRelationshipCode] if attributes.key?(:individualRelationshipCode)

          self.insurance_group_or_policy_number = attributes[:insuranceGroupOrPolicyNumber] if attributes.key?(:insuranceGroupOrPolicyNumber)

          self.insurance_type_code = attributes[:insuranceTypeCode] if attributes.key?(:insuranceTypeCode)

          self.medicare_outpatient_adjudication = attributes[:medicareOutpatientAdjudication] if attributes.key?(:medicareOutpatientAdjudication)

          self.non_covered_charge_amount = attributes[:nonCoveredChargeAmount] if attributes.key?(:nonCoveredChargeAmount)

          self.other_insured_group_name = attributes[:otherInsuredGroupName] if attributes.key?(:otherInsuredGroupName)

          self.other_payer_billing_provider = attributes[:otherPayerBillingProvider] if attributes.key?(:otherPayerBillingProvider)

          self.other_payer_name = attributes[:otherPayerName] if attributes.key?(:otherPayerName)

          if attributes.key?(:otherPayerReferringProvider) && (value = attributes[:otherPayerReferringProvider]).is_a?(Array)
            self.other_payer_referring_provider = value
          end

          self.other_payer_rendering_provider = attributes[:otherPayerRenderingProvider] if attributes.key?(:otherPayerRenderingProvider)

          self.other_payer_service_facility_location = attributes[:otherPayerServiceFacilityLocation] if attributes.key?(:otherPayerServiceFacilityLocation)

          self.other_payer_supervising_provider = attributes[:otherPayerSupervisingProvider] if attributes.key?(:otherPayerSupervisingProvider)

          self.other_subscriber_name = attributes[:otherSubscriberName] if attributes.key?(:otherSubscriberName)

          self.patient_signature_generated_for_patient = attributes[:patientSignatureGeneratedForPatient] if attributes.key?(:patientSignatureGeneratedForPatient)

          self.payer_paid_amount = attributes[:payerPaidAmount] if attributes.key?(:payerPaidAmount)

          self.payment_responsibility_level_code = attributes[:paymentResponsibilityLevelCode] if attributes.key?(:paymentResponsibilityLevelCode)

          self.release_of_information_code = attributes[:releaseOfInformationCode] if attributes.key?(:releaseOfInformationCode)

          self.remaining_patient_liability = attributes[:remainingPatientLiability] if attributes.key?(:remainingPatientLiability)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          benefits_assignment_certification_indicator_validator = EnumAttributeValidator.new('String', %w[N W Y])
          return false unless benefits_assignment_certification_indicator_validator.valid?(@benefits_assignment_certification_indicator)

          claim_filing_indicator_code_validator = EnumAttributeValidator.new('String',
                                                                             %w[11 12 13 14 15 16 17 AM BL CH DS FI HM LM
                                                                                MA MB MC OF TV VA WC ZZ])
          return false unless claim_filing_indicator_code_validator.valid?(@claim_filing_indicator_code)

          individual_relationship_code_validator = EnumAttributeValidator.new('String',
                                                                              %w[01 18 19 20 21 39 40 53 G8])
          return false unless individual_relationship_code_validator.valid?(@individual_relationship_code)

          insurance_type_code_validator = EnumAttributeValidator.new('String',
                                                                     %w[12 13 14 15 16 41 42 43 47])
          return false unless insurance_type_code_validator.valid?(@insurance_type_code)

          payment_responsibility_level_code_validator = EnumAttributeValidator.new('String',
                                                                                   %w[A B C D E F G H P S T U])
          return false unless payment_responsibility_level_code_validator.valid?(@payment_responsibility_level_code)

          release_of_information_code_validator = EnumAttributeValidator.new('String', %w[I Y])
          return false unless release_of_information_code_validator.valid?(@release_of_information_code)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] benefits_assignment_certification_indicator Object to be assigned
        def benefits_assignment_certification_indicator=(benefits_assignment_certification_indicator)
          validator = EnumAttributeValidator.new('String', %w[N W Y])
          unless validator.valid?(benefits_assignment_certification_indicator)
            raise ArgumentError,
                  %(invalid value for "benefits_assignment_certification_indicator", must be one of #{validator.allowable_values}.)
          end

          @benefits_assignment_certification_indicator = benefits_assignment_certification_indicator
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] claim_filing_indicator_code Object to be assigned
        def claim_filing_indicator_code=(claim_filing_indicator_code)
          validator = EnumAttributeValidator.new('String',
                                                 %w[11 12 13 14 15 16 17 AM BL CH DS FI HM LM MA MB MC OF TV VA WC ZZ])
          unless validator.valid?(claim_filing_indicator_code)
            raise ArgumentError,
                  %(invalid value for "claim_filing_indicator_code", must be one of #{validator.allowable_values}.)
          end

          @claim_filing_indicator_code = claim_filing_indicator_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] individual_relationship_code Object to be assigned
        def individual_relationship_code=(individual_relationship_code)
          validator = EnumAttributeValidator.new('String', %w[01 18 19 20 21 39 40 53 G8])
          unless validator.valid?(individual_relationship_code)
            raise ArgumentError,
                  %(invalid value for "individual_relationship_code", must be one of #{validator.allowable_values}.)
          end

          @individual_relationship_code = individual_relationship_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] insurance_type_code Object to be assigned
        def insurance_type_code=(insurance_type_code)
          validator = EnumAttributeValidator.new('String', %w[12 13 14 15 16 41 42 43 47])
          unless validator.valid?(insurance_type_code)
            raise ArgumentError,
                  %(invalid value for "insurance_type_code", must be one of #{validator.allowable_values}.)
          end

          @insurance_type_code = insurance_type_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] payment_responsibility_level_code Object to be assigned
        def payment_responsibility_level_code=(payment_responsibility_level_code)
          validator = EnumAttributeValidator.new('String', %w[A B C D E F G H P S T U])
          unless validator.valid?(payment_responsibility_level_code)
            raise ArgumentError,
                  %(invalid value for "payment_responsibility_level_code", must be one of #{validator.allowable_values}.)
          end

          @payment_responsibility_level_code = payment_responsibility_level_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] release_of_information_code Object to be assigned
        def release_of_information_code=(release_of_information_code)
          validator = EnumAttributeValidator.new('String', %w[I Y])
          unless validator.valid?(release_of_information_code)
            raise ArgumentError,
                  %(invalid value for "release_of_information_code", must be one of #{validator.allowable_values}.)
          end

          @release_of_information_code = release_of_information_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            benefits_assignment_certification_indicator == other.benefits_assignment_certification_indicator &&
            claim_filing_indicator_code == other.claim_filing_indicator_code &&
            claim_level_adjustments == other.claim_level_adjustments &&
            individual_relationship_code == other.individual_relationship_code &&
            insurance_group_or_policy_number == other.insurance_group_or_policy_number &&
            insurance_type_code == other.insurance_type_code &&
            medicare_outpatient_adjudication == other.medicare_outpatient_adjudication &&
            non_covered_charge_amount == other.non_covered_charge_amount &&
            other_insured_group_name == other.other_insured_group_name &&
            other_payer_billing_provider == other.other_payer_billing_provider &&
            other_payer_name == other.other_payer_name &&
            other_payer_referring_provider == other.other_payer_referring_provider &&
            other_payer_rendering_provider == other.other_payer_rendering_provider &&
            other_payer_service_facility_location == other.other_payer_service_facility_location &&
            other_payer_supervising_provider == other.other_payer_supervising_provider &&
            other_subscriber_name == other.other_subscriber_name &&
            patient_signature_generated_for_patient == other.patient_signature_generated_for_patient &&
            payer_paid_amount == other.payer_paid_amount &&
            payment_responsibility_level_code == other.payment_responsibility_level_code &&
            release_of_information_code == other.release_of_information_code &&
            remaining_patient_liability == other.remaining_patient_liability
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [benefits_assignment_certification_indicator, claim_filing_indicator_code, claim_level_adjustments,
           individual_relationship_code, insurance_group_or_policy_number, insurance_type_code, medicare_outpatient_adjudication, non_covered_charge_amount, other_insured_group_name, other_payer_billing_provider, other_payer_name, other_payer_referring_provider, other_payer_rendering_provider, other_payer_service_facility_location, other_payer_supervising_provider, other_subscriber_name, patient_signature_generated_for_patient, payer_paid_amount, payment_responsibility_level_code, release_of_information_code, remaining_patient_liability].hash
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

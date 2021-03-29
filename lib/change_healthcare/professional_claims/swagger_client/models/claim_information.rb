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
      class ClaimInformation
        attr_accessor(
          :ambulance_certification, :ambulance_drop_off_location, :ambulance_pick_up_location,
          :ambulance_transport_information, :anesthesia_related_surgical_procedure, :auto_accident_country_code, :auto_accident_state_code, :claim_charge_amount,
          :claim_contract_information, :claim_date_information, :claim_filing_code, :claim_frequency_code, :claim_note,
          :claim_pricing_repricing_information, :claim_supplemental_information, :condition_information, :epsdt_referral,
          :file_information, :health_care_code_information, :homebound_indicator, :other_subscriber_information, :patient_amount_paid,
          :patient_condition_information_vision, :patient_control_number, :patient_signature_source_code,
          :patient_weight, :place_of_service_code, :property_casualty_claim_number,
          :service_facility_location, :service_lines, :spinal_manipulation_service_information
        )

        ##
        # Allowed Values are:
        # - 'N' No,
        # - 'W' Not Applicable - Use code 'W' when the patient refuses to assign benefits
        # - 'Y' Yes
        attr_reader :benefits_assignment_certification_indicator

        # Allowed Values are:
        # - '1' Proof of Eligibility Unknown or Unavailable
        # - '2' Litigation,
        # - '3' Authorization Delays
        # - '4' Delay in Certifying Provider
        # - '5' Delay in Supplying Billing Forms
        # - '6' Delay in Delivery of Custom-made Appliances,
        # - '7' Third Party Processing Delay
        # - '8' Delay in Eligibility Determination
        # - '9' Original Claim Rejected or Denied Due to a Reason Unrelated to the Billing Limitation Rules
        # - '10' Administration Delay in the Prior Approval Process
        # - '11' Other
        # - '15' Natural Disaster
        attr_reader :delay_reason_code

        # Allowed Values are:
        # - 'A' Assigned
        # - 'B' Assignment Accepted on Clinical Lab Service Only
        # - 'C' Not Assigned - Required when neither codes 'A' or 'B' apply
        attr_reader :plan_participation_code

        # Allowed Values are:
        # - 'AA' Auto Accident
        # - 'EM' Employment
        # - 'OA' Other Accident
        attr_reader :related_causes_code

        # Allowed Values are:
        #
        # - 'I' Informed Consent to Release Medical Information for Conditions or Diagnoses Regulated by Federal Statutes
        # - 'Y' Yes
        attr_reader :release_information_code

        # Allowed Values are:
        # - 'N' NO,
        # - 'Y' Yes
        attr_reader :signature_indicator

        # Allowed Values are:
        # - '02' Physically Handicapped Children's Program
        # - '03' Special Federal Funding
        # - '05' Disabolity
        # - '09' Second Opinion or Surgery
        attr_reader :special_program_code

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
            ambulance_certification: :ambulanceCertification,
            ambulance_drop_off_location: :ambulanceDropOffLocation,
            ambulance_pick_up_location: :ambulancePickUpLocation,
            ambulance_transport_information: :ambulanceTransportInformation,
            anesthesia_related_surgical_procedure: :anesthesiaRelatedSurgicalProcedure,
            auto_accident_country_code: :autoAccidentCountryCode,
            auto_accident_state_code: :autoAccidentStateCode,
            benefits_assignment_certification_indicator: :benefitsAssignmentCertificationIndicator,
            claim_charge_amount: :claimChargeAmount,
            claim_contract_information: :claimContractInformation,
            claim_date_information: :claimDateInformation,
            claim_filing_code: :claimFilingCode,
            claim_frequency_code: :claimFrequencyCode,
            claim_note: :claimNote,
            claim_pricing_repricing_information: :claimPricingRepricingInformation,
            claim_supplemental_information: :claimSupplementalInformation,
            condition_information: :conditionInformation,
            delay_reason_code: :delayReasonCode,
            epsdt_referral: :epsdtReferral,
            file_information: :fileInformation,
            health_care_code_information: :healthCareCodeInformation,
            homebound_indicator: :homeboundIndicator,
            other_subscriber_information: :otherSubscriberInformation,
            patient_amount_paid: :patientAmountPaid,
            patient_condition_information_vision: :patientConditionInformationVision,
            patient_control_number: :patientControlNumber,
            patient_signature_source_code: :patientSignatureSourceCode,
            patient_weight: :patientWeight,
            place_of_service_code: :placeOfServiceCode,
            plan_participation_code: :planParticipationCode,
            property_casualty_claim_number: :propertyCasualtyClaimNumber,
            related_causes_code: :relatedCausesCode,
            release_information_code: :releaseInformationCode,
            service_facility_location: :serviceFacilityLocation,
            service_lines: :serviceLines,
            signature_indicator: :signatureIndicator,
            special_program_code: :specialProgramCode,
            spinal_manipulation_service_information: :spinalManipulationServiceInformation
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            ambulance_certification: :'Array<AmbulanceCertification>',
            ambulance_drop_off_location: :Address,
            ambulance_pick_up_location: :Address,
            ambulance_transport_information: :AmbulanceTransportInformation,
            anesthesia_related_surgical_procedure: :'Array<String>',
            auto_accident_country_code: :String,
            auto_accident_state_code: :String,
            benefits_assignment_certification_indicator: :String,
            claim_charge_amount: :String,
            claim_contract_information: :ClaimContractInformation,
            claim_date_information: :ClaimDateInformation,
            claim_filing_code: :String,
            claim_frequency_code: :String,
            claim_note: :ClaimNote,
            claim_pricing_repricing_information: :ClaimPricingRepricingInformation,
            claim_supplemental_information: :ClaimSupplementalInformation,
            condition_information: :'Array<ConditionInformation>',
            delay_reason_code: :String,
            epsdt_referral: :EpsdtReferral,
            file_information: :String,
            health_care_code_information: :'Array<HealthCareInformation>',
            homebound_indicator: :BOOLEAN,
            other_subscriber_information: :'Array<OtherSubscriberInformation>',
            patient_amount_paid: :String,
            patient_condition_information_vision: :'Array<PatientConditionInformationVision>',
            patient_control_number: :String,
            patient_signature_source_code: :BOOLEAN,
            patient_weight: :String,
            place_of_service_code: :String,
            plan_participation_code: :String,
            property_casualty_claim_number: :String,
            related_causes_code: :'Array<String>',
            release_information_code: :String,
            service_facility_location: :ServiceFacilityLocation,
            service_lines: :'Array<ServiceLine>',
            signature_indicator: :String,
            special_program_code: :String,
            spinal_manipulation_service_information: :SpinalManipulationServiceInformation
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          if attributes.key?(:ambulanceCertification) && (value = attributes[:ambulanceCertification]).is_a?(Array)
            self.ambulance_certification = value
          end

          self.ambulance_drop_off_location = attributes[:ambulanceDropOffLocation] if attributes.key?(:ambulanceDropOffLocation)

          self.ambulance_pick_up_location = attributes[:ambulancePickUpLocation] if attributes.key?(:ambulancePickUpLocation)

          self.ambulance_transport_information = attributes[:ambulanceTransportInformation] if attributes.key?(:ambulanceTransportInformation)

          if attributes.key?(:anesthesiaRelatedSurgicalProcedure) && (value = attributes[:anesthesiaRelatedSurgicalProcedure]).is_a?(Array)
            self.anesthesia_related_surgical_procedure = value
          end

          self.auto_accident_country_code = attributes[:autoAccidentCountryCode] if attributes.key?(:autoAccidentCountryCode)

          self.auto_accident_state_code = attributes[:autoAccidentStateCode] if attributes.key?(:autoAccidentStateCode)

          self.benefits_assignment_certification_indicator = attributes[:benefitsAssignmentCertificationIndicator] if attributes.key?(:benefitsAssignmentCertificationIndicator)

          self.claim_charge_amount = attributes[:claimChargeAmount] if attributes.key?(:claimChargeAmount)

          self.claim_contract_information = attributes[:claimContractInformation] if attributes.key?(:claimContractInformation)

          self.claim_date_information = attributes[:claimDateInformation] if attributes.key?(:claimDateInformation)

          self.claim_filing_code = attributes[:claimFilingCode] if attributes.key?(:claimFilingCode)

          self.claim_frequency_code = attributes[:claimFrequencyCode] if attributes.key?(:claimFrequencyCode)

          self.claim_note = attributes[:claimNote] if attributes.key?(:claimNote)

          self.claim_pricing_repricing_information = attributes[:claimPricingRepricingInformation] if attributes.key?(:claimPricingRepricingInformation)

          self.claim_supplemental_information = attributes[:claimSupplementalInformation] if attributes.key?(:claimSupplementalInformation)

          if attributes.key?(:conditionInformation) && (value = attributes[:conditionInformation]).is_a?(Array)
            self.condition_information = value
          end

          self.delay_reason_code = attributes[:delayReasonCode] if attributes.key?(:delayReasonCode)

          self.epsdt_referral = attributes[:epsdtReferral] if attributes.key?(:epsdtReferral)

          self.file_information = attributes[:fileInformation] if attributes.key?(:fileInformation)

          if attributes.key?(:healthCareCodeInformation) && (value = attributes[:healthCareCodeInformation]).is_a?(Array)
            self.health_care_code_information = value
          end

          self.homebound_indicator = attributes[:homeboundIndicator] if attributes.key?(:homeboundIndicator)

          if attributes.key?(:otherSubscriberInformation) && (value = attributes[:otherSubscriberInformation]).is_a?(Array)
            self.other_subscriber_information = value
          end

          self.patient_amount_paid = attributes[:patientAmountPaid] if attributes.key?(:patientAmountPaid)

          if attributes.key?(:patientConditionInformationVision) && (value = attributes[:patientConditionInformationVision]).is_a?(Array)
            self.patient_condition_information_vision = value
          end

          self.patient_control_number = attributes[:patientControlNumber] if attributes.key?(:patientControlNumber)

          self.patient_signature_source_code = attributes[:patientSignatureSourceCode] if attributes.key?(:patientSignatureSourceCode)

          self.patient_weight = attributes[:patientWeight] if attributes.key?(:patientWeight)

          self.place_of_service_code = attributes[:placeOfServiceCode] if attributes.key?(:placeOfServiceCode)

          self.plan_participation_code = attributes[:planParticipationCode] if attributes.key?(:planParticipationCode)

          self.property_casualty_claim_number = attributes[:propertyCasualtyClaimNumber] if attributes.key?(:propertyCasualtyClaimNumber)

          if attributes.key?(:relatedCausesCode) && (value = attributes[:relatedCausesCode]).is_a?(Array)
            self.related_causes_code = value
          end

          self.release_information_code = attributes[:releaseInformationCode] if attributes.key?(:releaseInformationCode)

          self.service_facility_location = attributes[:serviceFacilityLocation] if attributes.key?(:serviceFacilityLocation)

          if attributes.key?(:serviceLines) && (value = attributes[:serviceLines]).is_a?(Array)
            self.service_lines = value
          end

          self.signature_indicator = attributes[:signatureIndicator] if attributes.key?(:signatureIndicator)

          self.special_program_code = attributes[:specialProgramCode] if attributes.key?(:specialProgramCode)

          self.spinal_manipulation_service_information = attributes[:spinalManipulationServiceInformation] if attributes.key?(:spinalManipulationServiceInformation)
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

          delay_reason_code_validator = EnumAttributeValidator.new('String',
                                                                   %w[1 2 3 4 5 6 7 8 9 10 11 15])
          return false unless delay_reason_code_validator.valid?(@delay_reason_code)

          plan_participation_code_validator = EnumAttributeValidator.new('String', %w[A B C])
          return false unless plan_participation_code_validator.valid?(@plan_participation_code)

          release_information_code_validator = EnumAttributeValidator.new('String', %w[I Y])
          return false unless release_information_code_validator.valid?(@release_information_code)

          signature_indicator_validator = EnumAttributeValidator.new('String', %w[N Y])
          return false unless signature_indicator_validator.valid?(@signature_indicator)

          special_program_code_validator = EnumAttributeValidator.new('String', %w[02 03 05 09])
          return false unless special_program_code_validator.valid?(@special_program_code)

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
        # @param [Object] delay_reason_code Object to be assigned
        def delay_reason_code=(delay_reason_code)
          validator = EnumAttributeValidator.new('String', %w[1 2 3 4 5 6 7 8 9 10 11 15])
          unless validator.valid?(delay_reason_code)
            raise ArgumentError,
                  %(invalid value for "delay_reason_code", must be one of #{validator.allowable_values}.)
          end

          @delay_reason_code = delay_reason_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] plan_participation_code Object to be assigned
        def plan_participation_code=(plan_participation_code)
          validator = EnumAttributeValidator.new('String', %w[A B C])
          unless validator.valid?(plan_participation_code)
            raise ArgumentError,
                  %(invalid value for "plan_participation_code", must be one of #{validator.allowable_values}.)
          end

          @plan_participation_code = plan_participation_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] release_information_code Object to be assigned
        def release_information_code=(release_information_code)
          validator = EnumAttributeValidator.new('String', %w[I Y])
          unless validator.valid?(release_information_code)
            raise ArgumentError,
                  %(invalid value for "release_information_code", must be one of #{validator.allowable_values}.)
          end

          @release_information_code = release_information_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] signature_indicator Object to be assigned
        def signature_indicator=(signature_indicator)
          validator = EnumAttributeValidator.new('String', %w[N Y])
          unless validator.valid?(signature_indicator)
            raise ArgumentError,
                  %(invalid value for "signature_indicator", must be one of #{validator.allowable_values}.)
          end

          @signature_indicator = signature_indicator
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] special_program_code Object to be assigned
        def special_program_code=(special_program_code)
          validator = EnumAttributeValidator.new('String', %w[02 03 05 09])
          unless validator.valid?(special_program_code)
            raise ArgumentError,
                  %(invalid value for "special_program_code", must be one of #{validator.allowable_values}.)
          end

          @special_program_code = special_program_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            ambulance_certification == other.ambulance_certification &&
            ambulance_drop_off_location == other.ambulance_drop_off_location &&
            ambulance_pick_up_location == other.ambulance_pick_up_location &&
            ambulance_transport_information == other.ambulance_transport_information &&
            anesthesia_related_surgical_procedure == other.anesthesia_related_surgical_procedure &&
            auto_accident_country_code == other.auto_accident_country_code &&
            auto_accident_state_code == other.auto_accident_state_code &&
            benefits_assignment_certification_indicator == other.benefits_assignment_certification_indicator &&
            claim_charge_amount == other.claim_charge_amount &&
            claim_contract_information == other.claim_contract_information &&
            claim_date_information == other.claim_date_information &&
            claim_filing_code == other.claim_filing_code &&
            claim_frequency_code == other.claim_frequency_code &&
            claim_note == other.claim_note &&
            claim_pricing_repricing_information == other.claim_pricing_repricing_information &&
            claim_supplemental_information == other.claim_supplemental_information &&
            condition_information == other.condition_information &&
            delay_reason_code == other.delay_reason_code &&
            epsdt_referral == other.epsdt_referral &&
            file_information == other.file_information &&
            health_care_code_information == other.health_care_code_information &&
            homebound_indicator == other.homebound_indicator &&
            other_subscriber_information == other.other_subscriber_information &&
            patient_amount_paid == other.patient_amount_paid &&
            patient_condition_information_vision == other.patient_condition_information_vision &&
            patient_control_number == other.patient_control_number &&
            patient_signature_source_code == other.patient_signature_source_code &&
            patient_weight == other.patient_weight &&
            place_of_service_code == other.place_of_service_code &&
            plan_participation_code == other.plan_participation_code &&
            property_casualty_claim_number == other.property_casualty_claim_number &&
            related_causes_code == other.related_causes_code &&
            release_information_code == other.release_information_code &&
            service_facility_location == other.service_facility_location &&
            service_lines == other.service_lines &&
            signature_indicator == other.signature_indicator &&
            special_program_code == other.special_program_code &&
            spinal_manipulation_service_information == other.spinal_manipulation_service_information
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
            ambulance_certification, ambulance_drop_off_location, ambulance_pick_up_location,
            ambulance_transport_information, anesthesia_related_surgical_procedure, auto_accident_country_code, auto_accident_state_code,
            benefits_assignment_certification_indicator, claim_charge_amount, claim_contract_information, claim_date_information,
            claim_filing_code, claim_frequency_code, claim_note, claim_pricing_repricing_information, claim_supplemental_information,
            condition_information, delay_reason_code, epsdt_referral, file_information, health_care_code_information,
            homebound_indicator, other_subscriber_information, patient_amount_paid, patient_condition_information_vision,
            patient_control_number, patient_signature_source_code, patient_weight, place_of_service_code,
            plan_participation_code, property_casualty_claim_number, related_causes_code, release_information_code, service_facility_location,
            service_lines, signature_indicator, special_program_code, spinal_manipulation_service_information
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

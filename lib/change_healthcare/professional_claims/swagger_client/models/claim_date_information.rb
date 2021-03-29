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
      class ClaimDateInformation
        attr_accessor(
          :accident_date,
          :acute_manifestation_date,
          :admission_date,
          :assumed_and_relinquished_care_begin_date,
          :assumed_and_relinquished_care_end_date,
          :authorized_return_to_work_date,
          :disability_begin_date,
          :disability_end_date,
          :discharge_date,
          :first_contact_date,
          :hearing_and_vision_prescription_date,
          :initial_treatment_date,
          :last_menstrual_period_date,
          :last_seen_date,
          :last_worked_date,
          :last_x_ray_date,
          :repricer_received_date,
          :symptom_date
        )

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            accident_date: :accidentDate,
            acute_manifestation_date: :acuteManifestationDate,
            admission_date: :admissionDate,
            assumed_and_relinquished_care_begin_date: :assumedAndRelinquishedCareBeginDate,
            assumed_and_relinquished_care_end_date: :assumedAndRelinquishedCareEndDate,
            authorized_return_to_work_date: :authorizedReturnToWorkDate,
            disability_begin_date: :disabilityBeginDate,
            disability_end_date: :disabilityEndDate,
            discharge_date: :dischargeDate,
            first_contact_date: :firstContactDate,
            hearing_and_vision_prescription_date: :hearingAndVisionPrescriptionDate,
            initial_treatment_date: :initialTreatmentDate,
            last_menstrual_period_date: :lastMenstrualPeriodDate,
            last_seen_date: :lastSeenDate,
            last_worked_date: :lastWorkedDate,
            last_x_ray_date: :lastXRayDate,
            repricer_received_date: :repricerReceivedDate,
            symptom_date: :symptomDate
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            accident_date: :String,
            acute_manifestation_date: :String,
            admission_date: :String,
            assumed_and_relinquished_care_begin_date: :String,
            assumed_and_relinquished_care_end_date: :String,
            authorized_return_to_work_date: :String,
            disability_begin_date: :String,
            disability_end_date: :String,
            discharge_date: :String,
            first_contact_date: :String,
            hearing_and_vision_prescription_date: :String,
            initial_treatment_date: :String,
            last_menstrual_period_date: :String,
            last_seen_date: :String,
            last_worked_date: :String,
            last_x_ray_date: :String,
            repricer_received_date: :String,
            symptom_date: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.accident_date = attributes[:accidentDate] if attributes.key?(:accidentDate)

          self.acute_manifestation_date = attributes[:acuteManifestationDate] if attributes.key?(:acuteManifestationDate)

          self.admission_date = attributes[:admissionDate] if attributes.key?(:admissionDate)

          self.assumed_and_relinquished_care_begin_date = attributes[:assumedAndRelinquishedCareBeginDate] if attributes.key?(:assumedAndRelinquishedCareBeginDate)

          self.assumed_and_relinquished_care_end_date = attributes[:assumedAndRelinquishedCareEndDate] if attributes.key?(:assumedAndRelinquishedCareEndDate)

          self.authorized_return_to_work_date = attributes[:authorizedReturnToWorkDate] if attributes.key?(:authorizedReturnToWorkDate)

          self.disability_begin_date = attributes[:disabilityBeginDate] if attributes.key?(:disabilityBeginDate)

          self.disability_end_date = attributes[:disabilityEndDate] if attributes.key?(:disabilityEndDate)

          self.discharge_date = attributes[:dischargeDate] if attributes.key?(:dischargeDate)

          self.first_contact_date = attributes[:firstContactDate] if attributes.key?(:firstContactDate)

          self.hearing_and_vision_prescription_date = attributes[:hearingAndVisionPrescriptionDate] if attributes.key?(:hearingAndVisionPrescriptionDate)

          self.initial_treatment_date = attributes[:initialTreatmentDate] if attributes.key?(:initialTreatmentDate)

          self.last_menstrual_period_date = attributes[:lastMenstrualPeriodDate] if attributes.key?(:lastMenstrualPeriodDate)

          self.last_seen_date = attributes[:lastSeenDate] if attributes.key?(:lastSeenDate)

          self.last_worked_date = attributes[:lastWorkedDate] if attributes.key?(:lastWorkedDate)

          self.last_x_ray_date = attributes[:lastXRayDate] if attributes.key?(:lastXRayDate)

          self.repricer_received_date = attributes[:repricerReceivedDate] if attributes.key?(:repricerReceivedDate)

          self.symptom_date = attributes[:symptomDate] if attributes.key?(:symptomDate)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            accident_date == other.accident_date &&
            acute_manifestation_date == other.acute_manifestation_date &&
            admission_date == other.admission_date &&
            assumed_and_relinquished_care_begin_date == other.assumed_and_relinquished_care_begin_date &&
            assumed_and_relinquished_care_end_date == other.assumed_and_relinquished_care_end_date &&
            authorized_return_to_work_date == other.authorized_return_to_work_date &&
            disability_begin_date == other.disability_begin_date &&
            disability_end_date == other.disability_end_date &&
            discharge_date == other.discharge_date &&
            first_contact_date == other.first_contact_date &&
            hearing_and_vision_prescription_date == other.hearing_and_vision_prescription_date &&
            initial_treatment_date == other.initial_treatment_date &&
            last_menstrual_period_date == other.last_menstrual_period_date &&
            last_seen_date == other.last_seen_date &&
            last_worked_date == other.last_worked_date &&
            last_x_ray_date == other.last_x_ray_date &&
            repricer_received_date == other.repricer_received_date &&
            symptom_date == other.symptom_date
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
            accident_date, acute_manifestation_date, admission_date, assumed_and_relinquished_care_begin_date,
            assumed_and_relinquished_care_end_date, authorized_return_to_work_date, disability_begin_date, disability_end_date, discharge_date,
            first_contact_date, hearing_and_vision_prescription_date, initial_treatment_date, last_menstrual_period_date,
            last_seen_date, last_worked_date, last_x_ray_date, repricer_received_date, symptom_date
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
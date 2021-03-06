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
      class LineAdjudicationInformation
        attr_accessor :adjudication_or_payment_date, :bundled_or_unbundled_line_number, :claim_adjustment_information,
                      :other_payer_primary_identifier, :paid_service_unit_count, :procedure_code, :procedure_code_description, :procedure_modifier, :remaining_patient_liability, :service_line_paid_amount

        # Allowed Values are: 'ER' Jurisdiction Specific Procedure and Supply Codes, 'HC' Health Care Financing Administration Common Procedural Coding System (HCPCS) Codes, 'HP' Health Insurance Prospective Payment System (HIPPS) Skilled Nursing Facility Rate Code, 'IV' Home Infusion EDI Coalition (HIEC) Product/Service Code, 'WK' Advanced Billing Concepts (ABC) Codes
        attr_accessor :service_id_qualifier

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
            adjudication_or_payment_date: :adjudicationOrPaymentDate,
            bundled_or_unbundled_line_number: :bundledOrUnbundledLineNumber,
            claim_adjustment_information: :claimAdjustmentInformation,
            other_payer_primary_identifier: :otherPayerPrimaryIdentifier,
            paid_service_unit_count: :paidServiceUnitCount,
            procedure_code: :procedureCode,
            procedure_code_description: :procedureCodeDescription,
            procedure_modifier: :procedureModifier,
            remaining_patient_liability: :remainingPatientLiability,
            service_id_qualifier: :serviceIdQualifier,
            service_line_paid_amount: :serviceLinePaidAmount
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            adjudication_or_payment_date: :String,
            bundled_or_unbundled_line_number: :String,
            claim_adjustment_information: :'Array<ClaimAdjustment>',
            other_payer_primary_identifier: :String,
            paid_service_unit_count: :String,
            procedure_code: :String,
            procedure_code_description: :String,
            procedure_modifier: :'Array<String>',
            remaining_patient_liability: :String,
            service_id_qualifier: :String,
            service_line_paid_amount: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.adjudication_or_payment_date = attributes[:adjudicationOrPaymentDate] if attributes.key?(:adjudicationOrPaymentDate)

          self.bundled_or_unbundled_line_number = attributes[:bundledOrUnbundledLineNumber] if attributes.key?(:bundledOrUnbundledLineNumber)

          if attributes.key?(:claimAdjustmentInformation) && (value = attributes[:claimAdjustmentInformation]).is_a?(Array)
            self.claim_adjustment_information = value
          end

          self.other_payer_primary_identifier = attributes[:otherPayerPrimaryIdentifier] if attributes.key?(:otherPayerPrimaryIdentifier)

          self.paid_service_unit_count = attributes[:paidServiceUnitCount] if attributes.key?(:paidServiceUnitCount)

          self.procedure_code = attributes[:procedureCode] if attributes.key?(:procedureCode)

          self.procedure_code_description = attributes[:procedureCodeDescription] if attributes.key?(:procedureCodeDescription)

          if attributes.key?(:procedureModifier) && (value = attributes[:procedureModifier]).is_a?(Array)
            self.procedure_modifier = value
          end

          self.remaining_patient_liability = attributes[:remainingPatientLiability] if attributes.key?(:remainingPatientLiability)

          self.service_id_qualifier = attributes[:serviceIdQualifier] if attributes.key?(:serviceIdQualifier)

          self.service_line_paid_amount = attributes[:serviceLinePaidAmount] if attributes.key?(:serviceLinePaidAmount)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          service_id_qualifier_validator = EnumAttributeValidator.new('String', %w[ER HC HP IV WK])
          return false unless service_id_qualifier_validator.valid?(@service_id_qualifier)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] service_id_qualifier Object to be assigned
        def service_id_qualifier=(service_id_qualifier)
          validator = EnumAttributeValidator.new('String', %w[ER HC HP IV WK])
          unless validator.valid?(service_id_qualifier)
            raise ArgumentError,
                  %(invalid value for "service_id_qualifier", must be one of #{validator.allowable_values}.)
          end

          @service_id_qualifier = service_id_qualifier
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            adjudication_or_payment_date == other.adjudication_or_payment_date &&
            bundled_or_unbundled_line_number == other.bundled_or_unbundled_line_number &&
            claim_adjustment_information == other.claim_adjustment_information &&
            other_payer_primary_identifier == other.other_payer_primary_identifier &&
            paid_service_unit_count == other.paid_service_unit_count &&
            procedure_code == other.procedure_code &&
            procedure_code_description == other.procedure_code_description &&
            procedure_modifier == other.procedure_modifier &&
            remaining_patient_liability == other.remaining_patient_liability &&
            service_id_qualifier == other.service_id_qualifier &&
            service_line_paid_amount == other.service_line_paid_amount
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [adjudication_or_payment_date, bundled_or_unbundled_line_number, claim_adjustment_information,
           other_payer_primary_identifier, paid_service_unit_count, procedure_code, procedure_code_description, procedure_modifier, remaining_patient_liability, service_id_qualifier, service_line_paid_amount].hash
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

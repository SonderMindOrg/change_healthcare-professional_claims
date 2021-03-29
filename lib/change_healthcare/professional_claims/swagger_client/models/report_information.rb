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
      class ReportInformation
        attr_accessor :attachment_control_number

        # Allowed Values are: '03' Report Justifying Treatment Beyond Utilization Guidelines, '04' Drugs Administered, '05' Treatment Diagnosis, '06' Initial Assessment, '07' Functional Goals, '08' Plan of Treatment, '09' Progress Report, '10' Continued Treatment, '11' Chemical Analysis, '13' Certified Test Report, '15' Justification for Admission, '21' Recovery Plan, 'A3' Allergies/Sensitivities Document, 'A4' Autopsy Report, 'AM' Ambulance Certification, 'AS' Admission Summary, 'B2' Prescription, 'B3' Physician Order, 'B4' Referral Form, 'BR' Benchmark Testing Results, 'BS' Baseline, 'BT' Blanket Test Results, 'CB' Chiropractic Justification, 'CK' Consent Form(s), 'CT' Certification, 'D2' Drug Profile Document, 'DA' Dental Models, 'DB' Durable Medical Equipment Prescription, 'DG' Diagnostic Report, 'DJ' Discharge Monitoring Report, 'DS' Discharge Summary, 'EB' Explanation of Benefits (Coordination of Benefits or Medicare Secondary Payor), 'HC' Health Certificate, 'HR' Health Clinic Records, 'I5' Immunization Record,'IR' State School Immunization Records, 'LA' Laboratory Results, 'M1' Medical Record Attachment, 'MT' Models, 'NM Nursing Notes', 'OB' Operative Note, 'OC' Oxygen Content Averaging Report, 'OD' Orders and Treatments Document, 'OE' Objective Physical Examination (including vital signs) Document, 'OX' Oxygen Therapy Certification, 'OZ' Support Data for Claim, 'P4' Pathology Report, 'P5' Patient Medical History Document, 'PE' Parenteral or Enteral Certification, 'PN' Physical Therapy Notes, 'PO' Prosthetics or Orthotic Certification, 'PQ' Paramedical Results, 'PY' Physician’s Report, 'PZ' Physical Therapy Certification, 'RB' Radiology Films, 'RR' Radiology Reports, 'RT' Report of Tests and Analysis Report, 'RX' Renewable Oxygen Content Averaging Report, 'SG' Symptoms Document, 'V5' Death Notification, 'XP' Photographs
        attr_accessor :attachment_report_type_code

        # Allowed Values are: 'AA' Available on Request at Provider Site, 'BM' By Mail, 'EL' Electronically Only, 'EM' E-Mail, 'FT' File Transfer, 'FX' By Fax
        attr_accessor :attachment_transmission_code

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
            attachment_control_number: :attachmentControlNumber,
            attachment_report_type_code: :attachmentReportTypeCode,
            attachment_transmission_code: :attachmentTransmissionCode
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            attachment_control_number: :String,
            attachment_report_type_code: :String,
            attachment_transmission_code: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.attachment_control_number = attributes[:attachmentControlNumber] if attributes.key?(:attachmentControlNumber)

          self.attachment_report_type_code = attributes[:attachmentReportTypeCode] if attributes.key?(:attachmentReportTypeCode)

          self.attachment_transmission_code = attributes[:attachmentTransmissionCode] if attributes.key?(:attachmentTransmissionCode)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          attachment_report_type_code_validator = EnumAttributeValidator.new('String',
                                                                             %w[03 04 05 06 07 08 09 10 11 13 15 21 A3 A4 AM AS B2 B3 B4 BR BS BT CB CK CT D2 DA DB DG DJ DS EB HC HR I5 IR LA M1
                                                                                MT NM OB OC OD OE OX OZ P4 P5 PE PN PO PQ PY PZ RB RR RT RX SG V5 XP])
          return false unless attachment_report_type_code_validator.valid?(@attachment_report_type_code)

          attachment_transmission_code_validator = EnumAttributeValidator.new('String',
                                                                              %w[AA BM EL EM FT FX])
          return false unless attachment_transmission_code_validator.valid?(@attachment_transmission_code)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] attachment_report_type_code Object to be assigned
        def attachment_report_type_code=(attachment_report_type_code)
          validator = EnumAttributeValidator.new('String',
                                                 %w[03 04 05 06 07 08 09 10 11 13 15 21 A3 A4 AM AS B2 B3 B4 BR BS BT CB CK CT D2 DA DB DG DJ DS EB HC HR I5 IR LA M1
                                                    MT NM OB OC OD OE OX OZ P4 P5 PE PN PO PQ PY PZ RB RR RT RX SG V5 XP])
          unless validator.valid?(attachment_report_type_code)
            raise ArgumentError,
                  %(invalid value for "attachment_report_type_code", must be one of #{validator.allowable_values}.)
          end

          @attachment_report_type_code = attachment_report_type_code
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] attachment_transmission_code Object to be assigned
        def attachment_transmission_code=(attachment_transmission_code)
          validator = EnumAttributeValidator.new('String', %w[AA BM EL EM FT FX])
          unless validator.valid?(attachment_transmission_code)
            raise ArgumentError,
                  %(invalid value for "attachment_transmission_code", must be one of #{validator.allowable_values}.)
          end

          @attachment_transmission_code = attachment_transmission_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            attachment_control_number == other.attachment_control_number &&
            attachment_report_type_code == other.attachment_report_type_code &&
            attachment_transmission_code == other.attachment_transmission_code
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [attachment_control_number, attachment_report_type_code, attachment_transmission_code].hash
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

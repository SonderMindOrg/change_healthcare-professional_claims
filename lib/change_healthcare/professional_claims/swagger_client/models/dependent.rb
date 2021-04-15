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
      class Dependent
        attr_accessor :address, :contact_information, :date_of_birth, :first_name, :last_name, :middle_name, :ssn,
                      :valid_gender_and_date_of_birth

        # notes
        attr_reader :gender

        ##
        # Valid values are:
        # - 01 = Spouse
        # - 19 = Child
        # - 20 = Employee
        # - 21 = Unknown
        # - 39 = Organ Donor
        # - 40 = Cadaver Donor
        # - 53 = Life Partner
        # - G8 = Other Relationship
        attr_reader :relationship_to_subscriber_code

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
            address: :address,
            contact_information: :contactInformation,
            date_of_birth: :dateOfBirth,
            first_name: :firstName,
            gender: :gender,
            last_name: :lastName,
            middle_name: :middleName,
            relationship_to_subscriber_code: :relationshipToSubscriberCode,
            ssn: :ssn,
            valid_gender_and_date_of_birth: :validGenderAndDateOfBirth
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            address: :Address,
            contact_information: :ContactInformation,
            date_of_birth: :String,
            first_name: :String,
            gender: :String,
            last_name: :String,
            middle_name: :String,
            relationship_to_subscriber_code: :String,
            ssn: :String,
            valid_gender_and_date_of_birth: :BOOLEAN
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.address = attributes[:address] if attributes.key?(:address)

          self.contact_information = attributes[:contactInformation] if attributes.key?(:contactInformation)

          self.date_of_birth = attributes[:dateOfBirth] if attributes.key?(:dateOfBirth)

          self.first_name = attributes[:firstName] if attributes.key?(:firstName)

          self.gender = attributes[:gender] if attributes.key?(:gender)

          self.last_name = attributes[:lastName] if attributes.key?(:lastName)

          self.middle_name = attributes[:middleName] if attributes.key?(:middleName)

          self.relationship_to_subscriber_code = attributes[:relationshipToSubscriberCode] if attributes.key?(:relationshipToSubscriberCode)

          self.ssn = attributes[:ssn] if attributes.key?(:ssn)

          self.valid_gender_and_date_of_birth = attributes[:validGenderAndDateOfBirth] if attributes.key?(:validGenderAndDateOfBirth)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          gender_validator = EnumAttributeValidator.new('String', %w[M F U])
          return false unless gender_validator.valid?(@gender)

          relationship_to_subscriber_code_validator = EnumAttributeValidator.new('String',
                                                                                 %w[01 19 20 21 39 40 53 G8])
          return false unless relationship_to_subscriber_code_validator.valid?(@relationship_to_subscriber_code)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] gender Object to be assigned
        def gender=(gender)
          validator = EnumAttributeValidator.new('String', %w[M F U])
          unless validator.valid?(gender)
            raise ArgumentError,
                  %(invalid value for "gender", must be one of #{validator.allowable_values}.)
          end

          @gender = gender
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] relationship_to_subscriber_code Object to be assigned
        def relationship_to_subscriber_code=(relationship_to_subscriber_code)
          validator = EnumAttributeValidator.new('String', %w[01 19 20 21 39 40 53 G8])
          unless validator.valid?(relationship_to_subscriber_code)
            raise ArgumentError,
                  %(invalid value for "relationship_to_subscriber_code", must be one of #{validator.allowable_values}.)
          end

          @relationship_to_subscriber_code = relationship_to_subscriber_code
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            address == other.address &&
            contact_information == other.contact_information &&
            date_of_birth == other.date_of_birth &&
            first_name == other.first_name &&
            gender == other.gender &&
            last_name == other.last_name &&
            middle_name == other.middle_name &&
            relationship_to_subscriber_code == other.relationship_to_subscriber_code &&
            ssn == other.ssn &&
            valid_gender_and_date_of_birth == other.valid_gender_and_date_of_birth
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [address, contact_information, date_of_birth, first_name, gender, last_name, middle_name,
           relationship_to_subscriber_code, ssn, valid_gender_and_date_of_birth].hash
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

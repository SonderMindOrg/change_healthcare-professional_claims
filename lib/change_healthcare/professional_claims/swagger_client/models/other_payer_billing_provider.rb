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
      class OtherPayerBillingProvider
        # Allowed Values are: '1' Person, '2' Non-Person Entity
        attr_accessor :entity_type_qualifier

        # Allowed Values are: '0B' State License Number, '1G' Provider UPIN Number, 'G2' Provider Commercial Number, 'LU' Location Number
        attr_accessor :other_payer_billing_provider_identifier

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
            entity_type_qualifier: :entityTypeQualifier,
            other_payer_billing_provider_identifier: :otherPayerBillingProviderIdentifier
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            entity_type_qualifier: :String,
            other_payer_billing_provider_identifier: :'Array<ReferenceIdentification>'
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.entity_type_qualifier = attributes[:entityTypeQualifier] if attributes.key?(:entityTypeQualifier)

          if attributes.key?(:otherPayerBillingProviderIdentifier) && (value = attributes[:otherPayerBillingProviderIdentifier]).is_a?(Array)
            self.other_payer_billing_provider_identifier = value
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          entity_type_qualifier_validator = EnumAttributeValidator.new('String', %w[1 2])
          return false unless entity_type_qualifier_validator.valid?(@entity_type_qualifier)

          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] entity_type_qualifier Object to be assigned
        def entity_type_qualifier=(entity_type_qualifier)
          validator = EnumAttributeValidator.new('String', %w[1 2])
          unless validator.valid?(entity_type_qualifier)
            raise ArgumentError,
                  %(invalid value for "entity_type_qualifier", must be one of #{validator.allowable_values}.)
          end

          @entity_type_qualifier = entity_type_qualifier
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(other)
          return true if equal?(other)

          self.class == other.class &&
            entity_type_qualifier == other.entity_type_qualifier &&
            other_payer_billing_provider_identifier == other.other_payer_billing_provider_identifier
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [entity_type_qualifier, other_payer_billing_provider_identifier].hash
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
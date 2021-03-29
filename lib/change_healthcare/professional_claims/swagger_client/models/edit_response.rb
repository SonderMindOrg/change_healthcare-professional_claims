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
      class EditResponse
        attr_accessor :allow_override, :bad_data, :claim_core_path, :edit_activity, :edit_name, :element,
                      :error_description, :field_index, :loop, :phase_id, :qualifier_code, :reference_id, :segment

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            allow_override: :allowOverride,
            bad_data: :badData,
            claim_core_path: :claimCorePath,
            edit_activity: :editActivity,
            edit_name: :editName,
            element: :element,
            error_description: :errorDescription,
            field_index: :fieldIndex,
            loop: :loop,
            phase_id: :phaseID,
            qualifier_code: :qualifierCode,
            reference_id: :referenceID,
            segment: :segment
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            allow_override: :String,
            bad_data: :String,
            claim_core_path: :String,
            edit_activity: :String,
            edit_name: :String,
            element: :String,
            error_description: :String,
            field_index: :String,
            loop: :String,
            phase_id: :String,
            qualifier_code: :String,
            reference_id: :String,
            segment: :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.allow_override = attributes[:allowOverride] if attributes.key?(:allowOverride)

          self.bad_data = attributes[:badData] if attributes.key?(:badData)

          self.claim_core_path = attributes[:claimCorePath] if attributes.key?(:claimCorePath)

          self.edit_activity = attributes[:editActivity] if attributes.key?(:editActivity)

          self.edit_name = attributes[:editName] if attributes.key?(:editName)

          self.element = attributes[:element] if attributes.key?(:element)

          self.error_description = attributes[:errorDescription] if attributes.key?(:errorDescription)

          self.field_index = attributes[:fieldIndex] if attributes.key?(:fieldIndex)

          self.loop = attributes[:loop] if attributes.key?(:loop)

          self.phase_id = attributes[:phaseID] if attributes.key?(:phaseID)

          self.qualifier_code = attributes[:qualifierCode] if attributes.key?(:qualifierCode)

          self.reference_id = attributes[:referenceID] if attributes.key?(:referenceID)

          self.segment = attributes[:segment] if attributes.key?(:segment)
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
            allow_override == other.allow_override &&
            bad_data == other.bad_data &&
            claim_core_path == other.claim_core_path &&
            edit_activity == other.edit_activity &&
            edit_name == other.edit_name &&
            element == other.element &&
            error_description == other.error_description &&
            field_index == other.field_index &&
            loop == other.loop &&
            phase_id == other.phase_id &&
            qualifier_code == other.qualifier_code &&
            reference_id == other.reference_id &&
            segment == other.segment
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(other)
          self == other
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [allow_override, bad_data, claim_core_path, edit_activity, edit_name, element, error_description, field_index,
           loop, phase_id, qualifier_code, reference_id, segment].hash
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

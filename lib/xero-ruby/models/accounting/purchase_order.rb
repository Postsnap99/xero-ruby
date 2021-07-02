=begin
#Xero Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class PurchaseOrder

    attr_accessor :contact
    
    # See LineItems
    attr_accessor :line_items
    
    # Date purchase order was issued – YYYY-MM-DD. If the Date element is not specified then it will default to the current date based on the timezone setting of the organisation
    attr_accessor :date
    
    # Date the goods are to be delivered – YYYY-MM-DD
    attr_accessor :delivery_date
    

    attr_accessor :line_amount_types
    
    # Unique alpha numeric code identifying purchase order (when missing will auto-generate from your Organisation Invoice Settings)
    attr_accessor :purchase_order_number
    
    # Additional reference number
    attr_accessor :reference
    
    # See BrandingThemes
    attr_accessor :branding_theme_id
    

    attr_accessor :currency_code
    
    # See Purchase Order Status Codes
    attr_accessor :status
    DRAFT = "DRAFT".freeze
    SUBMITTED = "SUBMITTED".freeze
    AUTHORISED = "AUTHORISED".freeze
    BILLED = "BILLED".freeze
    DELETED = "DELETED".freeze
    
    # Boolean to set whether the purchase order should be marked as “sent”. This can be set only on purchase orders that have been approved or billed
    attr_accessor :sent_to_contact
    
    # The address the goods are to be delivered to
    attr_accessor :delivery_address
    
    # The person that the delivery is going to
    attr_accessor :attention_to
    
    # The phone number for the person accepting the delivery
    attr_accessor :telephone
    
    # A free text feild for instructions (500 characters max)
    attr_accessor :delivery_instructions
    
    # The date the goods are expected to arrive.
    attr_accessor :expected_arrival_date
    
    # Xero generated unique identifier for purchase order
    attr_accessor :purchase_order_id
    
    # The currency rate for a multicurrency purchase order. If no rate is specified, the XE.com day rate is used.
    attr_accessor :currency_rate
    
    # Total of purchase order excluding taxes
    attr_accessor :sub_total
    
    # Total tax on purchase order
    attr_accessor :total_tax
    
    # Total of Purchase Order tax inclusive (i.e. SubTotal + TotalTax)
    attr_accessor :total
    
    # Total of discounts applied on the purchase order line items
    attr_accessor :total_discount
    
    # boolean to indicate if a purchase order has an attachment
    attr_accessor :has_attachments
    
    # Last modified date UTC format
    attr_accessor :updated_date_utc
    
    # A string to indicate if a invoice status
    attr_accessor :status_attribute_string
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    # Displays array of warning messages from the API
    attr_accessor :warnings
    
    # Displays array of attachments from the API
    attr_accessor :attachments
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

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
        :'contact' => :'Contact',
        :'line_items' => :'LineItems',
        :'date' => :'Date',
        :'delivery_date' => :'DeliveryDate',
        :'line_amount_types' => :'LineAmountTypes',
        :'purchase_order_number' => :'PurchaseOrderNumber',
        :'reference' => :'Reference',
        :'branding_theme_id' => :'BrandingThemeID',
        :'currency_code' => :'CurrencyCode',
        :'status' => :'Status',
        :'sent_to_contact' => :'SentToContact',
        :'delivery_address' => :'DeliveryAddress',
        :'attention_to' => :'AttentionTo',
        :'telephone' => :'Telephone',
        :'delivery_instructions' => :'DeliveryInstructions',
        :'expected_arrival_date' => :'ExpectedArrivalDate',
        :'purchase_order_id' => :'PurchaseOrderID',
        :'currency_rate' => :'CurrencyRate',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'total_discount' => :'TotalDiscount',
        :'has_attachments' => :'HasAttachments',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'status_attribute_string' => :'StatusAttributeString',
        :'validation_errors' => :'ValidationErrors',
        :'warnings' => :'Warnings',
        :'attachments' => :'Attachments'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact' => :'Contact',
        :'line_items' => :'Array<LineItem>',
        :'date' => :'Date',
        :'delivery_date' => :'Date',
        :'line_amount_types' => :'LineAmountTypes',
        :'purchase_order_number' => :'String',
        :'reference' => :'String',
        :'branding_theme_id' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'status' => :'String',
        :'sent_to_contact' => :'Boolean',
        :'delivery_address' => :'String',
        :'attention_to' => :'String',
        :'telephone' => :'String',
        :'delivery_instructions' => :'String',
        :'expected_arrival_date' => :'Date',
        :'purchase_order_id' => :'String',
        :'currency_rate' => :'BigDecimal',
        :'sub_total' => :'BigDecimal',
        :'total_tax' => :'BigDecimal',
        :'total' => :'BigDecimal',
        :'total_discount' => :'BigDecimal',
        :'has_attachments' => :'Boolean',
        :'updated_date_utc' => :'DateTime',
        :'status_attribute_string' => :'String',
        :'validation_errors' => :'Array<ValidationError>',
        :'warnings' => :'Array<ValidationError>',
        :'attachments' => :'Array<Attachment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::PurchaseOrder` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::PurchaseOrder`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'delivery_date')
        self.delivery_date = attributes[:'delivery_date']
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'purchase_order_number')
        self.purchase_order_number = attributes[:'purchase_order_number']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'branding_theme_id')
        self.branding_theme_id = attributes[:'branding_theme_id']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'sent_to_contact')
        self.sent_to_contact = attributes[:'sent_to_contact']
      end

      if attributes.key?(:'delivery_address')
        self.delivery_address = attributes[:'delivery_address']
      end

      if attributes.key?(:'attention_to')
        self.attention_to = attributes[:'attention_to']
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.key?(:'delivery_instructions')
        self.delivery_instructions = attributes[:'delivery_instructions']
      end

      if attributes.key?(:'expected_arrival_date')
        self.expected_arrival_date = attributes[:'expected_arrival_date']
      end

      if attributes.key?(:'purchase_order_id')
        self.purchase_order_id = attributes[:'purchase_order_id']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'total_discount')
        self.total_discount = attributes[:'total_discount']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end

      if attributes.key?(:'warnings')
        if (value = attributes[:'warnings']).is_a?(Array)
          self.warnings = value
        end
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["DRAFT", "SUBMITTED", "AUTHORISED", "BILLED", "DELETED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["DRAFT", "SUBMITTED", "AUTHORISED", "BILLED", "DELETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact == o.contact &&
          line_items == o.line_items &&
          date == o.date &&
          delivery_date == o.delivery_date &&
          line_amount_types == o.line_amount_types &&
          purchase_order_number == o.purchase_order_number &&
          reference == o.reference &&
          branding_theme_id == o.branding_theme_id &&
          currency_code == o.currency_code &&
          status == o.status &&
          sent_to_contact == o.sent_to_contact &&
          delivery_address == o.delivery_address &&
          attention_to == o.attention_to &&
          telephone == o.telephone &&
          delivery_instructions == o.delivery_instructions &&
          expected_arrival_date == o.expected_arrival_date &&
          purchase_order_id == o.purchase_order_id &&
          currency_rate == o.currency_rate &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          total_discount == o.total_discount &&
          has_attachments == o.has_attachments &&
          updated_date_utc == o.updated_date_utc &&
          status_attribute_string == o.status_attribute_string &&
          validation_errors == o.validation_errors &&
          warnings == o.warnings &&
          attachments == o.attachments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contact, line_items, date, delivery_date, line_amount_types, purchase_order_number, reference, branding_theme_id, currency_code, status, sent_to_contact, delivery_address, attention_to, telephone, delivery_instructions, expected_arrival_date, purchase_order_id, currency_rate, sub_total, total_tax, total, total_discount, has_attachments, updated_date_utc, status_attribute_string, validation_errors, warnings, attachments].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end

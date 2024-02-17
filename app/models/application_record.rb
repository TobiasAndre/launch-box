# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.human_enum_name(enum_name, enum_value)
    I18n.t("activerecord.enums.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
  end

  def self.enum_options_for_select(enum_name)
    I18n.t("activerecord.enums.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}").map do |key, value|
      [value, key]
    end
  end
end

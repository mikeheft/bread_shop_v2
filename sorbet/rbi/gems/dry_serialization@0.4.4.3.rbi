# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry_serialization` gem.
# Please instead update this file by running `bin/tapioca gem dry_serialization`.

# source://dry_serialization//lib/dry_serialization/version.rb#1
module DrySerialization; end

# source://dry_serialization//lib/dry_serialization/blueprinter.rb#2
module DrySerialization::Blueprinter
  # source://dry_serialization//lib/dry_serialization/blueprinter.rb#4
  def serialized_resource(resource, blueprint, options = T.unsafe(nil)); end
end

# source://dry_serialization//lib/dry_serialization/concerns/serialization_helper.rb#2
module DrySerialization::Concerns; end

# source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#3
module DrySerialization::Concerns::Deserializable
  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#5
  def deserialized_payload(base_params, object = T.unsafe(nil)); end

  private

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#61
  def attributes(base_params); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#15
  def build_nested_relationships(attrs, base_params); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#52
  def dig_id(base_params, object); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#65
  def relationships(base_params); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#28
  def transform_nested_relationships_to_get_attributes(parent_relation_hash, data); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#20
  def transform_object_values(relations); end

  # source://dry_serialization//lib/dry_serialization/concerns/deserializable.rb#38
  def transform_relationships_to_get_attributes(object); end
end

# source://dry_serialization//lib/dry_serialization/concerns/serialization_helper.rb#3
module DrySerialization::Concerns::SerializationHelper
  # source://dry_serialization//lib/dry_serialization/concerns/serialization_helper.rb#8
  def error_response(errors, status = T.unsafe(nil)); end

  # source://dry_serialization//lib/dry_serialization/concerns/serialization_helper.rb#4
  def success_response(data = T.unsafe(nil), status = T.unsafe(nil)); end

  private

  # source://dry_serialization//lib/dry_serialization/concerns/serialization_helper.rb#17
  def handle_errors(errors); end
end

# source://dry_serialization//lib/dry_serialization/jsonapi_serializer.rb#1
module DrySerialization::JsonapiSerializer
  # source://dry_serialization//lib/dry_serialization/jsonapi_serializer.rb#3
  def serialized_resource(resource, serializer, options = T.unsafe(nil)); end
end

# source://dry_serialization//lib/dry_serialization/version.rb#2
DrySerialization::VERSION = T.let(T.unsafe(nil), String)

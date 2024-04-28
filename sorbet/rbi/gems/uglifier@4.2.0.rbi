# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `uglifier` gem.
# Please instead update this file by running `bin/tapioca gem uglifier`.

# A wrapper around the UglifyJS interface
#
# source://uglifier//lib/uglifier/version.rb#1
class Uglifier
  # Initialize new context for Uglifier with given options
  #
  # @param options [Hash] optional overrides to +Uglifier::DEFAULTS+
  # @return [Uglifier] a new instance of Uglifier
  #
  # source://uglifier//lib/uglifier.rb#148
  def initialize(options = T.unsafe(nil)); end

  # Minifies JavaScript code
  #
  # @param source [IO, String] valid JS source code.
  # @return [String] minified code.
  #
  # source://uglifier//lib/uglifier.rb#159
  def compile(source); end

  # Minifies JavaScript code and generates a source map
  #
  # @param source [IO, String] valid JS source code.
  # @return [Array(String, String)] minified code and source map.
  #
  # source://uglifier//lib/uglifier.rb#175
  def compile_with_map(source); end

  # Minifies JavaScript code
  #
  # @param source [IO, String] valid JS source code.
  # @return [String] minified code.
  #
  # source://uglifier//lib/uglifier.rb#159
  def compress(source); end

  private

  # source://uglifier//lib/uglifier.rb#362
  def comment_options; end

  # source://uglifier//lib/uglifier.rb#393
  def comment_setting; end

  # source://uglifier//lib/uglifier.rb#340
  def compressor_options; end

  # source://uglifier//lib/uglifier.rb#476
  def conditional_option(value, defaults, overrides = T.unsafe(nil)); end

  # source://uglifier//lib/uglifier.rb#181
  def context; end

  # source://uglifier//lib/uglifier.rb#269
  def context_lines_message(source, line_number, column); end

  # source://uglifier//lib/uglifier.rb#456
  def enclose_options; end

  # source://uglifier//lib/uglifier.rb#466
  def encode_regexp(regexp); end

  # source://uglifier//lib/uglifier.rb#241
  def error_context_format_options(low, high, line_index, column); end

  # source://uglifier//lib/uglifier.rb#237
  def error_context_lines; end

  # source://uglifier//lib/uglifier.rb#283
  def error_message(result, options); end

  # source://uglifier//lib/uglifier.rb#498
  def extract_source_mapping_url(source); end

  # source://uglifier//lib/uglifier.rb#252
  def format_error_line(line, options); end

  # source://uglifier//lib/uglifier.rb#259
  def format_lines(lines, options); end

  # @return [Boolean]
  #
  # source://uglifier//lib/uglifier.rb#224
  def harmony?; end

  # source://uglifier//lib/uglifier.rb#228
  def harmony_error_message(message); end

  # @return [Boolean]
  #
  # source://uglifier//lib/uglifier.rb#416
  def ie8?; end

  # source://uglifier//lib/uglifier.rb#508
  def input_source_map(source, generate_map); end

  # @return [Boolean]
  #
  # source://uglifier//lib/uglifier.rb#420
  def keep_fnames?(type); end

  # source://uglifier//lib/uglifier.rb#308
  def mangle_options; end

  # source://uglifier//lib/uglifier.rb#321
  def mangle_properties_options; end

  # source://uglifier//lib/uglifier.rb#408
  def migrate_braces(options); end

  # Prevent negate_iife when wrap_iife is true
  #
  # source://uglifier//lib/uglifier.rb#354
  def negate_iife_block; end

  # source://uglifier//lib/uglifier.rb#403
  def output_options; end

  # source://uglifier//lib/uglifier.rb#443
  def parse_options; end

  # @raise [Error]
  #
  # source://uglifier//lib/uglifier.rb#290
  def parse_result(result, generate_map, options); end

  # source://uglifier//lib/uglifier.rb#448
  def parse_source_map_options; end

  # source://uglifier//lib/uglifier.rb#377
  def quote_style; end

  # source://uglifier//lib/uglifier.rb#300
  def read_source(source); end

  # Run UglifyJS for given source code
  #
  # source://uglifier//lib/uglifier.rb#208
  def run_uglifyjs(input, generate_map); end

  # source://uglifier//lib/uglifier.rb#486
  def sanitize_map_root(map); end

  # source://uglifier//lib/uglifier.rb#188
  def source_map_comments; end

  # source://uglifier//lib/uglifier.rb#429
  def source_map_options(input_map); end

  # source://uglifier//lib/uglifier.rb#200
  def source_with(path); end

  class << self
    # Minifies JavaScript code using implicit context.
    #
    # @param source [IO, String] valid JS source code.
    # @param options [Hash] optional overrides to +Uglifier::DEFAULTS+
    # @return [String] minified code.
    #
    # source://uglifier//lib/uglifier.rb#132
    def compile(source, options = T.unsafe(nil)); end

    # Minifies JavaScript code and generates a source map using implicit context.
    #
    # @param source [IO, String] valid JS source code.
    # @param options [Hash] optional overrides to +Uglifier::DEFAULTS+
    # @return [Array(String, String)] minified code and source map.
    #
    # source://uglifier//lib/uglifier.rb#141
    def compile_with_map(source, options = T.unsafe(nil)); end
  end
end

# Default options for compilation
#
# source://uglifier//lib/uglifier.rb#27
Uglifier::DEFAULTS = T.let(T.unsafe(nil), Hash)

# ES5 shims source path
#
# source://uglifier//lib/uglifier.rb#20
Uglifier::ES5FallbackPath = T.let(T.unsafe(nil), String)

# source://uglifier//lib/uglifier.rb#105
Uglifier::EXTRA_OPTIONS = T.let(T.unsafe(nil), Array)

# Error class for compilation errors.
#
# source://uglifier//lib/uglifier.rb#11
class Uglifier::Error < ::StandardError; end

# UglifyJS with Harmony source path
#
# source://uglifier//lib/uglifier.rb#16
Uglifier::HarmonySourcePath = T.let(T.unsafe(nil), String)

# source://uglifier//lib/uglifier.rb#107
Uglifier::MANGLE_PROPERTIES_DEFAULTS = T.let(T.unsafe(nil), Hash)

# source://uglifier//lib/uglifier.rb#115
Uglifier::SOURCE_MAP_DEFAULTS = T.let(T.unsafe(nil), Hash)

# Source Map path
#
# source://uglifier//lib/uglifier.rb#18
Uglifier::SourceMapPath = T.let(T.unsafe(nil), String)

# UglifyJS source path
#
# source://uglifier//lib/uglifier.rb#14
Uglifier::SourcePath = T.let(T.unsafe(nil), String)

# String.split shim source path
#
# source://uglifier//lib/uglifier.rb#22
Uglifier::SplitFallbackPath = T.let(T.unsafe(nil), String)

# UglifyJS wrapper path
#
# source://uglifier//lib/uglifier.rb#24
Uglifier::UglifyJSWrapperPath = T.let(T.unsafe(nil), String)

# Current version of Uglifier.
#
# source://uglifier//lib/uglifier/version.rb#3
Uglifier::VERSION = T.let(T.unsafe(nil), String)

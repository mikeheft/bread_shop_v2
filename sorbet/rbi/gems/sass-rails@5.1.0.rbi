# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sass-rails` gem.
# Please instead update this file by running `bin/tapioca gem sass-rails`.

# source://sass-rails//lib/sass/rails.rb#1
module Sass
  class << self
    # source://sass/3.7.4/lib/sass.rb#55
    def compile(contents, options = T.unsafe(nil)); end

    # source://sass/3.7.4/lib/sass.rb#82
    def compile_file(filename, *args); end

    # source://sass/3.7.4/lib/sass.rb#37
    def load_paths; end

    # source://sass/3.7.4/lib/sass/logger.rb#13
    def logger; end

    # source://sass/3.7.4/lib/sass/logger.rb#9
    def logger=(l); end

    # source://sass/3.7.4/lib/sass.rb#17
    def tests_running; end

    # source://sass/3.7.4/lib/sass.rb#17
    def tests_running=(_arg0); end
  end
end

# source://sass-rails//lib/sass/rails.rb#2
module Sass::Rails; end

# source://sass-rails//lib/sass/rails/cache_store.rb#5
class Sass::Rails::CacheStore < ::Sass::CacheStores::Base
  # @return [CacheStore] a new instance of CacheStore
  #
  # source://sass-rails//lib/sass/rails/cache_store.rb#8
  def initialize(environment); end

  # source://sass-rails//lib/sass/rails/cache_store.rb#16
  def _retrieve(key, version, sha); end

  # source://sass-rails//lib/sass/rails/cache_store.rb#12
  def _store(key, version, sha, contents); end

  # Returns the value of attribute environment.
  #
  # source://sass-rails//lib/sass/rails/cache_store.rb#6
  def environment; end

  # source://sass-rails//lib/sass/rails/cache_store.rb#26
  def path_to(key); end
end

# source://sass-rails//lib/sass/rails/logger.rb#6
class Sass::Rails::Logger < ::Sass::Logger::Base
  # source://sass-rails//lib/sass/rails/logger.rb#7
  def _log(level, message); end
end

# source://sass-rails//lib/sass/rails/railtie.rb#6
class Sass::Rails::Railtie < ::Rails::Railtie; end

# source://sass-rails//lib/sass/rails/importer.rb#8
class Sass::Rails::SassImporter < ::Sass::Importers::Filesystem
  include ::Sass::Rails::SassImporter::Deprecated
  include ::Sass::Rails::SassImporter::ERB
  include ::Sass::Rails::SassImporter::Globbing

  # Allow .css files to be @import'd
  #
  # source://sass-rails//lib/sass/rails/importer.rb#142
  def extensions; end
end

# source://sass-rails//lib/sass/rails/importer.rb#99
module Sass::Rails::SassImporter::Deprecated
  # source://sass-rails//lib/sass/rails/importer.rb#100
  def extensions; end

  # source://sass-rails//lib/sass/rails/importer.rb#113
  def find(*args); end

  # source://sass-rails//lib/sass/rails/importer.rb#109
  def find_relative(*args); end

  private

  # source://sass-rails//lib/sass/rails/importer.rb#118
  def deprecate_extra_css_extension(engine); end
end

# source://sass-rails//lib/sass/rails/importer.rb#62
module Sass::Rails::SassImporter::ERB
  # source://sass-rails//lib/sass/rails/importer.rb#71
  def erb_extensions; end

  # source://sass-rails//lib/sass/rails/importer.rb#63
  def extensions; end

  # source://sass-rails//lib/sass/rails/importer.rb#82
  def find(*args); end

  # source://sass-rails//lib/sass/rails/importer.rb#78
  def find_relative(*args); end

  private

  # source://sass-rails//lib/sass/rails/importer.rb#87
  def process_erb_engine(engine); end
end

# source://sass-rails//lib/sass/rails/importer.rb#9
module Sass::Rails::SassImporter::Globbing
  # source://sass-rails//lib/sass/rails/importer.rb#22
  def find(name, options); end

  # source://sass-rails//lib/sass/rails/importer.rb#12
  def find_relative(name, base, options); end

  private

  # @raise [ArgumentError]
  #
  # source://sass-rails//lib/sass/rails/importer.rb#44
  def each_globbed_file(base, glob, context); end

  # source://sass-rails//lib/sass/rails/importer.rb#29
  def glob_imports(base, glob, options); end
end

# source://sass-rails//lib/sass/rails/importer.rb#10
Sass::Rails::SassImporter::Globbing::GLOB = T.let(T.unsafe(nil), Regexp)

# source://sass-rails//lib/sass/rails/template.rb#9
class Sass::Rails::SassTemplate < ::Tilt::Template
  # source://sass-rails//lib/sass/rails/template.rb#28
  def evaluate(context, locals, &block); end

  # source://sass-rails//lib/sass/rails/template.rb#18
  def initialize_engine; end

  # source://sass-rails//lib/sass/rails/template.rb#21
  def prepare; end

  # source://sass-rails//lib/sass/rails/template.rb#24
  def syntax; end

  private

  # source://sass-rails//lib/sass/rails/template.rb#61
  def importer_class; end

  class << self
    # source://sass-rails//lib/sass/rails/template.rb#10
    def default_mime_type; end

    # @return [Boolean]
    #
    # source://sass-rails//lib/sass/rails/template.rb#14
    def engine_initialized?; end
  end
end

# source://sass-rails//lib/sass/rails/template.rb#66
class Sass::Rails::ScssTemplate < ::Sass::Rails::SassTemplate
  # source://sass-rails//lib/sass/rails/template.rb#67
  def syntax; end
end

# source://sass-rails//lib/sass/rails/version.rb#3
Sass::Rails::VERSION = T.let(T.unsafe(nil), String)

# source://sass-rails//lib/sass/rails/helpers.rb#4
module Sprockets
  extend ::Sprockets::Utils
  extend ::Sprockets::URIUtils
  extend ::Sprockets::PathUtils
  extend ::Sprockets::DigestUtils
  extend ::Sprockets::PathDigestUtils
  extend ::Sprockets::Dependencies
  extend ::Sprockets::Compressing
  extend ::Sprockets::Processing
  extend ::Sprockets::HTTPUtils
  extend ::Sprockets::Transformers
  extend ::Sprockets::Engines
  extend ::Sprockets::Mime
  extend ::Sprockets::Paths
end
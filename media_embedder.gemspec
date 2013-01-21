# coding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "media_embedder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "media_embedder"
  s.version     = MediaEmbedder::VERSION
  s.authors     = ["Joël Quenneville"]
  s.email       = ["joel.quen@gmail.com"]
  s.summary     = "flexible, extendable library for parsing media links"
  s.description = "flexible, extendable library for parsing media links"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "README.md"]
end

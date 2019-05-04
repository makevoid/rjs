module RJSModules

  EXPORTS = {} unless defined?(EXPORTS)

  module Modules
    def exports=(mod)
      EXPORTS[mod.name] = mod
    end
    module_function(:exports=)
  end

  def Require(modulePath)
    moduleName = File.basename modulePath
    moduleName = moduleName.capitalize
    require modulePath
    Object.send :remove_const, moduleName
    EXPORTS.fetch moduleName
  end
  module_function(:Require)

end

include RJSModules

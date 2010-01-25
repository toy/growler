var Growl = {
	growler: function(){
		if (this._growler == undefined) {
			this._growler = new k.Growler()
		}
		return this._growler
	}
	, growl: function(msg, options) {
		return this.growler().growl(msg, options)
	}
	, info: function(msg, options){
		return this.growler().info(msg, options)
	}
	, warn: function(msg, options){
		return this.growler().warn(msg, options)
	}
	, error: function(msg, options){
		return this.growler().error(msg, options)
	}
	, ungrowl: function(n, o){
		return this.growler().ungrowl(n, o)
	}
}
Growl.message = Growl.growl
Growl.notice = Growl.info
Growl.warning = Growl.warn

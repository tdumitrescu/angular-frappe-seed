module.exports = (app) ->
  {UsersController, NameController, PartialsController} = app.locals
  {pathRaw} = app.locals.path

  app.locals.renderRoot = (req, res) -> res.render 'index', view: 'index'

  app.get pathRaw('index'), app.locals.renderRoot

  app.get pathRaw('user.index'), UsersController.index
  app.get pathRaw('user.new'), UsersController.new
  app.post pathRaw('user.create'), UsersController.create

  app.get '/api/name', NameController.index

  app.get pathRaw('partial.show'), PartialsController.show

  # client-side routes
  app.get '/view*', app.locals.renderRoot

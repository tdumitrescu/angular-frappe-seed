module.exports = (app) ->
  class NameController
    @index = (req, res) -> res.json name: 'Bob'

const db = require('../data/dbConfig')

function find() {
	return db.select("*").from("schemes")
}

function findById(ID) {
  return db("schemes as s")
		.where("s.id", ID)
		.first("s.id", "s.scheme_name")
}

module.exports = {
  find,
  findById,
}
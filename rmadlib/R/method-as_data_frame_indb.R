
## to be finished

## generic function
## @param db.obj - new relation in database (table or view)
## @param r.obj - R object which contains data for creating database object
setGeneric("as.data.frame.indb",
           function (db.obj, r.obj, ...) standardGeneric("as.data.frame.indb"),
           signature = c("db.obj", "r.obj"))

## create table in db from data.frame r.obj 
setMethod("as.data.frame.indb",
          signature(db.obj = "character", r.obj = "data.frame"),
          function (db.obj, r.obj, row.names = TRUE, 
                    overwrite = FALSE, append = FALSE,
                    con.id = 1, order.by = NULL)
          {
              dbWriteTable(conn = .localVars$db[[con.id]]$con, table = db.obj,
                           dframe = r.obj, row.names = row.names,
                           overwrite = overwrite, append = append)
              
              
          })

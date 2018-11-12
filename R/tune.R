# mod:
#   

create_mod <- function (mod, data, ...) UseMethod(create)
create_mod.lm <- function (mod, data, ...) {

}

tune <- function (mod, data, params, K, iterations, ...) UseMethod("tune")

tune.mod <- function (mod, data, params, K = 5, iterations, ...) {

}


# if mod missing: stop
# if mod require data and data missing: stop
# if data is list of length 1: data = data[[1]]
# if data is list of length two or three: assume
#    train = data[[1]]
#    validate = data[[2]
#    test = data[[3]]
# unless all(c("train", "validation", "test") %in% names(data))
#     or all(c("train", "test") %in% names(data))
# else if data not missing then use data instead of mod$data: warning

# if any of params is function, then use iterations else ignore iterations: warning
# if missing iterations stop
# else if iterations < 1 then stop:
# if iterations not integer: ceil(iterations): warning

# if K < 1: stop
# if K not integer ceil(K): warning
# if params not list with all(names(params) %in% mod$params): stop
# if any mod$params missing default value and missing in names(params): stop
# message: hyperparameter grid to be used


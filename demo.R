# author: Michelle Wang
# date: 2021-11-19

"This script prints out docopt args. This script takes no argument.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [--arg4=<arg4>]

Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[--arg4=<arg4>]   Takes any value (this is an optional option)
" -> doc

library(tidyverse)
library(docopt)

opt <- docopt(doc)

main <- function(opt){
    library(docopt)
    opt <- docopt(doc)
    print(opt)
    print(typeof(opt))
    print(opt$arg4)
}

main(opt)
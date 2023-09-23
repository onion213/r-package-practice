# R Package Practice

## ref
https://r-pkgs.org/

## steps

```
# on host
docker build . -t r-package-practice
docker run -it --rm -p 8787:8787 -v $(pwd):/work/r-package-practice r-package-practice bash

# on Docker container
mkdir /work/r-package-practice/regexcite
chmod -R 777 /work/r-package-practice
cd /work/r-package-practice/regexcit
rstudio-server start

# on rstudio
library(devtools)
create_package("/work/r-package-practice/regexcite")
use_r("strsplit1")
#-> edit created file
```

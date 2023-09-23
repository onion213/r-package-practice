# steps

```
# on host
docker build . -t r-package-practice
docker run -it --rm -p 8787:8787 -v $(pwd):/work/r-package-practice r-package-practice bash

# on Docker container
rstudio-server start
mkdir /work/r-package-practice/regexcite
chmod -R 777 /work/r-package-practice

# on rstudio
library(devtools)
create_package("/work/r-package-practice/regexcite")
use_r("strsplit1")
#-> edit created file
```

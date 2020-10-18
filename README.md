# mks 

[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable) [![R build status](https://github.com/wilsontom/mks/workflows/R-CMD-check/badge.svg)](https://github.com/wilsontom/mks/actions) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0")

**Search the Mailvelope Key Server using the RESTful API**

### Installation & Usage

```R
remotes::install_github('wilsontom/mks')


library(mks)

> OB <- search_email('an_email@address.com')
Email address not found


> OB <- search_email('tpw2@aber.ac.uk')
> OB
── Mailvelope Key Server ───────────────────────────────────────── mks v0.1.0 ── 
 
tpw2@aber.ac.uk 
● ID: 9c5710c376754b1e
	 
● Fingerprint: 83b5296b301d8df54aa822b79c5710c376754b1e

```

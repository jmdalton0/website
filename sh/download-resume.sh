#!/bin/bash

curl --request POST \
    --url https://yakpdf.p.rapidapi.com/pdf \
    --header 'content-type: application/json' \
    --header 'x-rapidapi-host: yakpdf.p.rapidapi.com' \
    --header 'x-rapidapi-key: be7f352ac5mshd75d8afbdddef06p1a69dejsnf14739abeb6d' \
    --data '{
        "pdf": {
            "preferCSSPageSize": true,
            "printBackground": true
        },
        "source": {
            "url": "https://yakpdf.github.io/examples/invoice/invoice"
        },
        "wait": {
            "for": "navigation", "timeout": 1000, "waitUntil": "load"
        }
  }' > testInvoice.pdf


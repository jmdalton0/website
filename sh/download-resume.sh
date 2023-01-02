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
            "url": "https://jessedalton.com/pages/resume/resume-general.html"
        },
        "wait": {
            "for": "navigation", "timeout": 1000, "waitUntil": "load"
        }
  }' > ../pages/resume/resume.pdf


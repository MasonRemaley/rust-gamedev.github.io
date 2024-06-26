#!/usr/bin/env bash

set -euo pipefail

if [[ -z "${NEWSLETTER_MONTH}" ]]; then
  echo "NEWSLETTER_MONTH is not set. Exiting..."
  exit 1
fi

if [[ -z "${NEWSLETTER_YEAR}" ]]; then
  echo "NEWSLETTER_YEAR is not set. Exiting..."
  exit 1
fi

if [[ -z "${NEWSLETTER_COUNTER}" ]]; then
  echo "NEWSLETTER_COUNTER is not set. Exiting..."
  exit 1
fi

# NEWSLETTER_NEXT_MONTH_NUMBER
if [[ -z "${NEWSLETTER_NEXT_MONTH_NUMBER}" ]]; then
  echo "NEWSLETTER_NEXT_MONTH_NUMBER is not set. Exiting..."
  exit 1
fi

cp .github/newsletter-template.md index.md
sed -i "s/{{\s*NEWSLETTER_MONTH\s*}}/${NEWSLETTER_MONTH}/g" index.md
sed -i "s/{{\s*NEWSLETTER_YEAR\s*}}/${NEWSLETTER_YEAR}/g" index.md
sed -i "s/{{\s*NEWSLETTER_COUNTER\s*}}/${NEWSLETTER_COUNTER}/g" index.md
sed -i "s/{{\s*NEWSLETTER_COUNTER_NEXT\s*}}/$((NEWSLETTER_COUNTER + 1))/g" index.md
sed -i "s/{{\s*NEWSLETTER_NEXT_MONTH_NUMBER\s*}}/${NEWSLETTER_NEXT_MONTH_NUMBER}/g" index.md
# Create a dir in content/news with the counter with 3 digits as name
destination="content/news/$(printf "%03d" ${NEWSLETTER_COUNTER})"
mkdir -p $destination
mv index.md $destination/index.md
git status

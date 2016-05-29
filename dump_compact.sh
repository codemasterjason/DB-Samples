#! /bin/bash
# ${1}: database name
# ${2}: tables name
mysqldump -h 127.0.0.1 -u root ${1} -p --no-create-db --no-create-info --no-set-names --no-tablespaces --compact --compress --single-transaction --skip-comments --skip-add-drop-table --skip-quote-names --skip-set-charset --skip-tz-utc --verbose --tables ${2} > "load_${2}.dump"

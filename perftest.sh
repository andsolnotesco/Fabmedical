host="fabmedical-747641.mongo.cosmos.azure.com"
username="fabmedical-747641"
password="gkp7odqTyrwsHSkS78tJ5NTBr1ixTK5LOz8OnHKztHgQZUYJwNq9TcCRbiJLmySrT6eBbm4ZUeOOgDlOk2WJSQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done


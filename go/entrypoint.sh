#!/bin/bash
cd /go/jerwa
echo "✅ Go mod cache"
go clean -modcache
echo "✅ Install dependency minor or patch"
go get -u github.com/oxequa/realize
echo "✅ Start service ..."
exec realize start --path="/go/jerwa/" --name="jerwa-api" --run
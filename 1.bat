@echo off
go build -ldflags "-w -s" -o fscan.exe main.go


@echo off
SET CGO_ENABLED=0
SET GOOS=windows
SET GOARCH=386
go build -ldflags "-w -s" -o fscan32.exe  main.go


@echo off
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build -ldflags "-w -s" -o fscan  main.go


upx fscan.exe
upx fscan32.exe
upx fscan

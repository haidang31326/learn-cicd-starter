#!/bin/bash
if [ -f .env ]; then
  source .env
fi

# Lấy đường dẫn chuẩn xác của thư mục Go bin và gọi trực tiếp goose
GO_BIN_PATH=$(go env GOPATH)/bin
$GO_BIN_PATH/goose -dir sql/schema turso "$DATABASE_URL" up

#!/bin/bash
goose -dir sql/schema turso "$DATABASE_URL" up

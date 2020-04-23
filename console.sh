# Useful Commands

# Create Migration
yarn sequelize migration:create --name=create-users

# Run Migration
yarn sequelize db:migrate

# Undo Migrate
yarn sequelize db:migrate:undo
yarn sequelize db:migrate:undo:all

# Create Seed
yarn sequelize seed:generate --name admin-user

# Run Seed
yarn sequelize db:seed:all

# Docker
docker ps
docker ps -a
docker start <id>
docker stop <id>
docker container rm <id>

# Redis
docker run --name redisdatabase -p 6379:6379 -d -t redis:alpine

# Sequelize
docker run --name database -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres

# Comando Uteis

# Criar Migration
yarn sequelize migration:create --name=create-users

# Rodar Migration
yarn sequelize db:migrate

# Desfazer Migrate
yarn sequelize db:migrate:undo
yarn sequelize db:migrate:undo:all

# Criar Seed
yarn sequelize seed:generate --name admin-user

# Rodar Seed
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

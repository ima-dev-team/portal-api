FROM node:18-bullseye-slim AS builder

# Crie o diretório da aplicação
WORKDIR /app

# Copie os arquivos package.json e package-lock.json
COPY package*.json ./
COPY prisma ./prisma/

# Instale as dependências da aplicação
RUN npm i
# Copie o restante dos arquivos do projeto
COPY . .

# Execute o build da aplicação
RUN npm run build

# Inicie a etapa final usando novamente node:18-bullseye-slim
FROM node:18-bullseye-slim

# Copie os arquivos necessários da etapa de construção
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/prisma ./prisma


# Exponha a porta 3000
EXPOSE 3000
CMD [  "npm", "run", "start:prod"]

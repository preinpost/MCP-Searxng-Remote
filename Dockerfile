# 베이스 이미지
FROM node:24-alpine AS build

WORKDIR /app

# package.json, package-lock.json, tsconfig.json 복사
COPY package.json ./
COPY tsconfig.json ./

# 의존성 설치 (devDependencies 포함)
RUN npm install

# 소스 복사 및 빌드
COPY . .
RUN npm run build

# --- 런타임 이미지 ---
FROM node:24-alpine
WORKDIR /app

# 의존성만 복사 (devDependencies 제외)
COPY --from=build /app/package.json ./
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/dist ./dist

EXPOSE 3000
CMD ["node", "dist/index.js"]
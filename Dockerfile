# Menggunakan base image dari nodejs versi 14
FROM node:14

# Menggunakan Work Directory pada /app
WORKDIR /app

# Copy seluruh source code ke dalam image
COPY . .

# Setting environment 
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies pada lingkungan production dan build
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 untuk container
EXPOSE 8080

# Menjalankan Aplikasi
CMD ["npm", "start"]

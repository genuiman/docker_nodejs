# Используем официальный образ Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json .
RUN npm install

# Копируем весь проект
COPY . .

# Открываем порт для контейнера
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "start"]

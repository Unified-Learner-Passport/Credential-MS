FROM node:16.20.0
#This installs the necessary libs to have wkhtmltopdf tool work
RUN apt-get update \
    && apt-get install -y wkhtmltopdf \
    gconf-service \
    libappindicator1 \
    libgbm-dev \
    libx11-xcb1 \
    libxss1 \
    libxtst6


RUN apt-get install -y \
    fonts-liberation \
    # gconf-service \
    # libappindicator1 \ 
    libasound2 \
    libatk1.0-0 \
    libcairo2 \
    libcups2 \
    libfontconfig1 \ 
    # libgbm-dev \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libicu-dev \
    libjpeg-dev \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libpng-dev \
    libx11-6 \
    # libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    # libxss1 \
    # libxtst6 \
    xdg-utils

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
EXPOSE 3333
CMD ["yarn", "start"]

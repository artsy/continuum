Continuum
===

[Continuum](https://github.com/artsy/continuum) is the Chinese splash page.

Meta
---

* __State:__ production
* __Production:__ [https://www.artsy.cn/](https://www.artsy.net/) | [S3](https://aws.amazon.com/s3/)
* __Github:__ [https://github.com/artsy/continuum/](https://github.com/artsy/continuum
* __Point People:__ [@craigspaeth](https://github.com/craigspaeth), [@xtina-starr ](https://github.com/xtina-starr)

[![Build Status](https://semaphoreci.com/api/v1/projects/69ecb118-c998-4935-9752-14f1e9550053/382764/badge.svg)](https://semaphoreci.com/artsy/continuum--2)

Set-Up
---

- Install [NVM](https://github.com/creationix/nvm)
- Install Node 0.12
```
nvm install 0.12
nvm alias default 0.12
```
- Fork Continuum to your Github account in the Github UI.
- Clone your repo locally (substitute your Github username).
```
git clone git@github.com:craigspaeth/continuum.git && cd continuum
```
- Install node modules
```
npm install
```
- Copy and paste the font files into /public/fonts
- Create a .env file and paste in S3 credentials (can be found in one password).
- Start Continuum in development mode
```
npm start
```
- When ready, deploy the static site to S3 (production).
```
npm run deploy
```

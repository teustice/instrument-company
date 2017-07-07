# Drone Race Management
_This project is a simple way to organize fpv drone races._

## Installation/setup
* Clone the repository, and run the following commands to install dependencies

```
$ npm install
$ npm install promise-polyfill --save-exact
$ bower install
```
* Create a file named `api-keys.ts` in your /src/app folder
* Create a firebase project, and add your firebase credentials to the file like so
```
export var masterFirebaseConfig = {
    apiKey: "xxxx",
    authDomain: "xxxx.firebaseapp.com",
    databaseURL: "https://xxxx.firebaseio.com",
    storageBucket: "xxxx.appspot.com",
    messagingSenderId: "xxxx"
  };
```
* Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive/pipe/service/class/module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.


## Page Views

_landing page:_
![](https://github.com/teustice/drone-race-management/blob/master/src/assets/img/Screen%20Shot%202017-06-29%20at%201.03.20%20PM.png)
_about page:_
![](https://github.com/teustice/drone-race-management/blob/master/src/assets/img/Screen%20Shot%202017-06-29%20at%201.03.30%20PM.png)
_pilot roster page:_
![](https://github.com/teustice/drone-race-management/blob/master/src/assets/img/Screen%20Shot%202017-06-29%20at%201.03.45%20PM.png)


## Further help

For further help, please contact me through github.

## License

MIT, Copyright by Tanner Eustice
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

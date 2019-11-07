# react-native-adobe-mobile-sdk

## Getting started

`$ npm install react-native-adobe-mobile-sdk --save`

### Mostly automatic installation

`$ react-native link react-native-adobe-mobile-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-adobe-mobile-sdk` and add `RnAdobeMobileSdk.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRnAdobeMobileSdk.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RnAdobeMobileSdkPackage;` to the imports at the top of the file
  - Add `new RnAdobeMobileSdkPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-adobe-mobile-sdk'
  	project(':react-native-adobe-mobile-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-adobe-mobile-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-adobe-mobile-sdk')
  	```


## Usage
```javascript
import RnAdobeMobileSdk from 'react-native-adobe-mobile-sdk';

// TODO: What to do with the module?
RnAdobeMobileSdk;
```

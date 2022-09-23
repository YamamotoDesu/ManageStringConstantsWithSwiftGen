# [ManageStringConstantsWithSwiftGen](https://github.com/SwiftGen/SwiftGen)

https://youtu.be/HVtZpywL0HM

## 1 . Install SwiftGen (via homebrew)
```
$ brew update
$ brew install swiftgen
```

## 2 . Generate the YML config file: swiftgen config init
```
cd /Users/yamamotokyou/GitDev/ManageStringConstantsWithSwiftGen
swiftgen config init
```

## 3 . Edit the YML file

swiftgen.yml
```yml
 strings:
   inputs:
     - ManageStringConstantsWithSwiftGen/Localizable.strings
   outputs:
     - templateName: structured-swift5
       output: ManageStringConstantsWithSwiftGen/Strings+Generated.swift
       params:
        enumName: S
```

<img width="803" alt="スクリーンショット_2022_09_23_19_05" src="https://user-images.githubusercontent.com/47273077/191938128-806c061f-5b47-4e2b-8407-e8c975c92e76.png">


## 4 . Check for error: swiftgen config lint

```
swiftgen config lint
```
<img width="571" alt="スクリーンショット_2022_09_23_19_10" src="https://user-images.githubusercontent.com/47273077/191938947-05422ab7-32a1-412c-bea2-b2df7f151a73.png">





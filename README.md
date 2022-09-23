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


## 5 . Generate: swiftgen

```
swiftgen
```
<img width="533" alt="スクリーンショット_2022_09_23_19_17" src="https://user-images.githubusercontent.com/47273077/191940156-3f7457d6-48bb-4719-9648-d6014dd1998e.png">


----

<img width="703" alt="スクリーンショット_2022_09_23_19_18" src="https://user-images.githubusercontent.com/47273077/191940508-5affbc3f-492b-4628-8148-b6b235cf4d7a.png">

<img width="268" alt="スクリーンショット_2022_09_23_19_20" src="https://user-images.githubusercontent.com/47273077/191940633-74019571-4ce7-4da1-a89b-51ad24d64f05.png">




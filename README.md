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

## Example

<img width="703" alt="スクリーンショット_2022_09_23_19_18" src="https://user-images.githubusercontent.com/47273077/191940508-5affbc3f-492b-4628-8148-b6b235cf4d7a.png">

<img width="268" alt="スクリーンショット_2022_09_23_19_20" src="https://user-images.githubusercontent.com/47273077/191940633-74019571-4ce7-4da1-a89b-51ad24d64f05.png">

<img width="1135" alt="スクリーンショット_2022_09_23_19_22" src="https://user-images.githubusercontent.com/47273077/191941086-7ad0c031-d3e8-4cd0-8b5f-d365d03ca7fe.png">

```swift
class ViewController: UIViewController {
    
//    enum Constant {
//        static let title = "Home"
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = S.title
        
    }


}
```

----- 

### String Pattern

Localizable.strings
```
"title" = "Home";

"config.user.change_password" = "Change password";
```

ViewController

```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = S.title
        
        print(S.Config.User.changePassword)
        
    }
```

----


## Assets Pattern
swiftgen.yml
```yml
 xcassets:
   inputs:
     - ManageStringConstantsWithSwiftGen/Assets.xcassets
   outputs:
     - templateName: swift5
       params:
        forceProvidesNamespaces: true
       output: ManageStringConstantsWithSwiftGen/XCAssets+Generated.swift
       params:
        enumName: I
 ```
 
 ```
 swiftgen config lint
 ```
 
 <img width="565" alt="スクリーンショット_2022_09_24_12_31" src="https://user-images.githubusercontent.com/47273077/192078240-1884df73-c93e-43cf-be4a-63b1cb11939d.png">
 
 ```
 swiftgen
 ```

 <img width="534" alt="スクリーンショット_2022_09_24_12_33" src="https://user-images.githubusercontent.com/47273077/192078340-52248eaa-f8e0-487e-9302-8ff7b367bf33.png">

 
<img width="774" alt="スクリーンショット_2022_09_24_12_35" src="https://user-images.githubusercontent.com/47273077/192078405-600545ba-a334-469f-aa0b-6009a3764ac9.png">

<img width="983" alt="スクリーンショット_2022_09_24_12_39" src="https://user-images.githubusercontent.com/47273077/192078552-2cb1844f-a69d-4bb2-8e20-a7b12a5da5ec.png">

<img width="553" alt="スクリーンショット_2022_09_24_12_40" src="https://user-images.githubusercontent.com/47273077/192078575-c3f5a852-ace1-4bdb-ac24-1261147ee1d9.png">

<img width="1041" alt="スクリーンショット_2022_09_24_12_48" src="https://user-images.githubusercontent.com/47273077/192078868-03256c46-4094-4cb9-9ac1-b3fcd244abd8.png">



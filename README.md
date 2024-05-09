✨✨✨看起来还不错？给个star✨吧，急需支持✨✨✨

# English ReadMe 
🌐 If you need,please visit >>> [English README](https://github.com/intsig171/SmartCodable/blob/main/README-EN.md)


# SmartCodable - Swift数据解析

**SmartCodable** 是一个基于Swift的**Codable**协议的数据解析库，旨在提供更为强大和灵活的解析能力。通过优化和重写**Codable**的标准功能，**SmartCodable** 有效地解决了传统解析过程中的常见问题，并提高了解析的容错性和灵活性。



## HandyJSON vs Codable

【✅： 完美支持】【⚠️： 带缺陷的支持】【❌： 不支持】

| 序号                  | 🎯 特性                    | 💬 特性说明 💬                                                 | SmartCodable | HandyJSON |
| ------------------------- | ------------------------------------------------------------ | ------------ | --------- | --------- |
| 1     | **强大的兼容性**        | 完美兼容：**字段缺失** & **字段值为nul** & **字段类型错误**  | ✅            | ✅         |
| 2        | **类型自适应**          | 如JSON中是一个Int，但对应Model是String字段，会自动完成转化   | ✅            | ✅         |
| 3            | **解析Any**             | 支持解析 **[Any], [String: Any]** 等类型                     | ✅            | ✅         |
| 4           | **解码回调**            | 支持Model解码完成的回调，即：**didFinishingMapping**         | ✅            | ✅         |
| 5   | **属性初始化值填充**    | 当解析失败时，支持使用初始的Model属性的赋值。                | ✅            | ✅         |
| 6 | **字符串的Model化** | 字符串是json字符串，支持进行Model化解析                  | ✅            | ✅         |
| 7         | **枚举的解析**          | 当枚举解析失败时，支持兼容。                                 | ✅            | ✅         |
| 8 | **属性的自定义解析** - 重命名 | 自定义解码key（对解码的Model属性重命名）                     | ✅            | ✅         |
| 9 | **属性的自定义解析** - 忽略 | 忽略某个Model属性的解码                                      | ✅           | ✅         |
| 10 | **支持designatedPath** | 实现自定义解析路径 | ✅ | ✅ |
| 11       | **Model的继承**         | 在model的继承关系下，Codable的支持力度较弱，使用不便（可以支持） | ❌          | ✅         |
| 12  | **自定义解析路径**      | 指定从json的层级开始解析                                     | ✅           | ✅         |
| 13 | **超复杂的数据解码**    | 解码过程中，多数据做进一步的整合/处理。如： 数据的扁平化处理 | ✅            | ⚠️         |
| 14          | **解码性能**            | 在解码性能上，SmartCodable 平均强 30%                        | ✅            | ⚠️         |
| 15      | **异常解码日志**        | 当解码异常进行了兼容处理时，提供排查日志                     | ✅            | ❌         |
| 16        | **安全性方面**          | 底层实现的稳定性和安全性。                                   | ✅            | ❌         |
| 17 | **支持designatedPath** | 实现自定义解析路径 | ✅ | ✅ |

整体来讲： SmartCodable 和  HandyJSON 相比，在功能和使用上相近。


#### 安全性 & 稳定性

* **HandyJSON** 使用Swift的反射特性来实现数据的序列化和反序列化。**该机制是非法的，不安全的**， 更多的细节请访问 **[HandyJSON 的466号issue](https://github.com/alibaba/HandyJSON/issues/466)**.

* **Codable** 是Swift标准库的一部分，提供了一种声明式的方式来进行序列化和反序列化，它更为通用。



## 建议 & 回答

有不少使用者提出了优化需求 或 新功能的要求。在这边逐一回复：

| 💡 建议列表                                          | 是否采纳 | 理由                                                         |
| --------------------------------------------------- | -------- | ------------------------------------------------------------ |
| ① **#suggest 1 在mapping方法中支持解析忽略**        | ❌        | [不采纳的理由](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%201%20在mapping方法中支持解析忽略.md) |
| ② **#suggest 2 像HandyJSON一样支持继承关系的解析**  | ❌        | [不采纳的理由](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%202%20像HandyJSON一样支持继承关系的解析.md) |
| ③ **#suggest 3 支持初始值填充**                     | ✅        | [实现逻辑](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%203%20支持属性初始化值填充.md) |
| ④ **#suggest 4 提供HandyJSON的替换指导**            | ✅        | [替换指导](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%204%20使用SmartCodable%20平替%20HandyJSON.md) |
| ⑤ **#suggest 5 提供全局的Key映射策略**              | ✅        | [实现逻辑](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%205%20提供全局的Key映射策略.md) |
| ⑥ **#suggest 6 支持UIColor的解析**                  | ✅        | [实现逻辑](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%206%20支持由hex颜色解析到UIColor.md) |
| ⑦ **#suggest 7 增加单个Value的自定义转换策略**      | ✅        | [实现逻辑](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%207%20增加单个Value的自定义转换策略.md) |
| ⑧ **#suggest 8 支持designatedPath的自定义路径解析** | ✅        | 参考HandyJSON实现                                            |


## 使用SmartCodable 平替 HandyJSON
更多内容请查看： [替换指导](https://github.com/intsig171/SmartCodable/blob/main/Document/建议/%23suggest%204%20使用SmartCodable%20平替%20HandyJSON.md) 

| 内容项          | 内容项说明                                    | 使用场景 | 替换难度 | 评判理由                                               |
| --------------- | --------------------------------------------- | -------- | -------- | ------------------------------------------------------ |
| ①声明Model      | 声明Model                                     | ★★★★★    | ★☆☆☆☆    | 全局将 HandyJSON 替换为 SmartCodable即可。             |
| ②反序列化       | 数据的模型化（数据转Model）                   | ★★★★★    | ☆☆☆☆☆    | 完全一样的调用方式，无需处理。                         |
| ③序列化         | 模型的数据化（Model转数据）                   | ★☆☆☆☆    | ★☆☆☆☆    | 将 `toJSON()` 替换为 `toDictionary()` 或 `toArray()`。 |
| ④解码完成的回调 | 解析完成进一步处理数据                        | ★★☆☆☆    | ☆☆☆☆☆    | 完全一样的调用方式，无需处理。                         |
| ⑤自定义解析Key  | 忽略key的解析 & 自定义Key的映射关系           | ★★★☆☆    | ★★★☆☆    | 需要更改调用方式。                                     |
| ⑥解析Any        | 解析Any类型的数据。Any，[String: Any]， [Any] | ★☆☆☆☆    | ★☆☆☆☆    | 将Any替换为SmartAny                                    |
| ⑦处理继承关系   | 解析存在的继承关系的Model                     | ★☆☆☆☆    | ★★★★★    | 建议使用协议实现。                                     |
| ⑧枚举的解析     | 解析枚举属性                                  | ★☆☆☆☆    | ★☆☆☆☆    | 多实现一个 defaultCase                                 |




## 集成 SmartCodable

### cocopods 集成

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
use_frameworks!

target 'MyApp' do
  pod 'SmartCodable'
end
```

### SPM 集成 

```
https://github.com/intsig171/SmartCodable.git
```



## SmartCodable 使用介绍

### 1. 字典的解码

```
import SmartCodable

struct Model: SmartCodable {
    var name: String = ""
}

let dict: [String: String] = ["name": "xiaoming"]
guard let model = Model.deserialize(from: dict) else { return }
```



### 2. 数组的解码

```
import SmartCodable

struct Model: SmartCodable {
    var name: String = ""
}

let dict: [String: String] = ["name": "xiaoming"]
let arr = [dict, dict]
guard let models = [Model].deserialize(from: arr) else { return }
```



###  3. 序列化与反序列化

```
// 字典转模型
guard let xiaoMing = JsonToModel.deserialize(from: dict) else { return }

// 模型转字典
let studentDict = xiaoMing.toDictionary() ?? [:]

// 模型转json字符串
let json1 = xiaoMing.toJSONString(prettyPrint: true) ?? ""

// json字符串转模型
guard let xiaoMing2 = JsonToModel.deserialize(from: json1) else { return }
```



### 4. 解码Any

Codable是无法解码Any类型的，这样就意味着模型的属性类型不可以是 **Any**，**[Any]**，**[String: Any]**等类型， 这对解码造成了一定的困扰。**SmartAny** 是**SmartCodable** 提供的解决Any的方案。可以直接像使用 **Any** 一样使用它。 

```
struct AnyModel: SmartCodable {
    var name: SmartAny?
    var dict: [String: SmartAny] = [:]
    var arr: [SmartAny] = []
}
```

```
let dict = [
    "name": "xiao ming",
    "age": 20,
    "dict": inDict,
    "arr": arr
] as [String : Any]

guard let model = AnyModel.deserialize(from: dict) else { return }
print(model.name.peel )
print(model.dict.peel)
print(model.arr.peel)
```

真实的数据被 **SmartAny** 包裹住了，需要使用 **peel** 对数据解包。



#### 编码成SmartAny

同时也提供了反向转换的方法：

| From             | To                   | Example                        |
| ---------------- | -------------------- | ------------------------------ |
| `Any`            | `SmartAny`           | `SmartAny(from: "some")`       |
| `[String: Any] ` | `[String: SmartAny]` | `["key2": "value2"].cover`     |
| `[Any]`          | `[SmartAny]`         | `[ ["key3": "value3"] ].cover` |



### 5. 模型化解析json字符串

```
let dict: [String: Any] = [
    "hobby": "{\"name\":\"sleep\"}",
]
guard let model = Model.deserialize(from: dict) else { return }
print(model)

struct Model: SmartCodable {
    var hobby: Hobby?
}

struct Hobby: SmartCodable {
    var name: String = ""
}
```



### 6. 支持解析UIColor

```
let dict = [
    "color": "7DA5E3"
]

struct Model: SmartCodable {
    var color: SmartColor?
}

guard let model = Model.deserialize(from: dict) else { return }
print(model.color?.peel)
```

**UIColor** 是 `non-final class`。非最终类不能简单地实现`Codable`的`init(from:)`。具体可查阅 **suggest 6**。



### 7. 枚举的解码

让枚举遵循 **SmartCaseDefaultable** ，当解码失败时使用 **defaultCase**。

```
struct CompatibleEnum: SmartCodable {

    var enumTest: TestEnum?

    enum TestEnum: String, SmartCaseDefaultable {
        case a
        case b
        case c = "hello"
    }
}
```



#### 支持关联值枚举的解码

完全交给你自定义解析规则。 如果不自定义，不进行解析。

```
/// 关联值枚举的解析， 需要自己接管decode
enum Sex: SmartAssociatedEnumerable {
    static var defaultCase: Sex = .women
    
    case man
    case women
    case other(String)
}
struct CompatibleEnum: SmartCodable {
    var sex: Sex = .man
    static func mappingForValue() -> [SmartValueTransformer]? {
        [
            CodingKeys.sex <--- RelationEnumTranformer()
        ]
    }
}

struct RelationEnumTranformer: ValueTransformable {
    func transformToJSON(_ value: Introduce_8ViewController.Sex?) -> String? {
        guard let value = value else { return nil }
        
        switch value {
        case .man:
            return "man"
        case .women:
            return "women"
        case .other(let v):
            return v
        }
    }

    typealias Object = Sex
    typealias JSON = String
    
    func transformFromJSON(_ value: Any?) -> Sex? {
        guard let temp = value as? String else { return .man }

        switch temp {
        case "man":
            return .man
        case "women":
            return .women
        default:
            return .other(temp)
        }
    }
}
```







## SmartCodable的解码策略

解码策略分为三个阶段的操作：

* 解码前
  * 忽略某些key的解析
* 解码中
  * Key的映射策略
  * Value的解析策略
* 解码后
  * 解码完成后的回调



### [解码前] 忽略某些key的解析

```
struct Model: SmartCodable {
    var name: String = ""
    var ignore: String = ""
    var age: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case name
        case age = "selfAge"
        // 忽略ignore的解析。
//            case ignore
    }
}
```

重写当前的 **CodingKeys**，不需要解析谁，就删掉谁。留下的是需要解析的。

当然，也可以在这里进行key的重命名。



#### @IgnoredKey

也可以选择使用 **@IgnoredKey** 属性包装器忽略某个Key的解析。

```
struct Home: SmartCodable {
    var name: String = ""
    @IgnoredKey
    var age: [Any] = ["1"]
    @IgnoredKey
    var area: String = "area"
}
```

严格意义上来说： 要忽略解析只能通过重写 **CodingKeys**。 作者通过**@IgnoredKey** 的标记打断了解析过程（还是会进入解析 ），返回了该属性的初始化值。



### [解码中] Key的映射策略

#### 全局的Key映射策略

```
public enum SmartKeyDecodingStrategy : Sendable {
    case useDefaultKeys
    
    // 蛇形命名转驼峰命名
    case fromSnakeCase
    
    // 首字母大写转小写
    case firstLetterLower
}
```

作用于本次解析，本次解析只能使用一种策略，不可混合使用。

```
let option1: SmartDecodingOption = .key(.fromSnakeCase)
guard let model1 = TwoModel.deserialize(from: dict1, options: [option1]) else { return }
```



#### 局部的Key映射策略

* 支持自定义路径解析。
* 支持字段解析的重命名。

##### 自定义解析路径

跨层解析。将sub里面的name字段，解析到 Model的name属性上。

```
let dict = [
    "age": 10,
    "sub": [
        "name": "Mccc"
    ]
]
```

```
struct Model: SmartCodable {
    var age: Int = 0
    var name: String = ""
    static func mappingForKey() -> [SmartKeyTransformer]? {
        [ CodingKeys.name <--- "sub.name" ]
    }
}
```

##### 重命名key

支持自定义映射关系，你需要实现一个可选的`mapping`函数。

```
struct Model: SmartCodable {
    var name: String = ""
    var age: Int = 0
    var ignoreKey: String?
    
    enum CodingKeys: CodingKey {
        case name
        case age
    }
    
    static func mappingForKey() -> [SmartKeyTransformer]? {
        [
            CodingKeys.name <--- ["nickName", "realName"],
            CodingKeys.age <--- "person_age"
        ]
    }
}
```

* **1对1** 的映射

  你可以选择像 `CodingKeys.age <--- "person_age" `，只处理**1对1**的映射。

* **1对多** 的映射

  也可以像 `CodingKeys.name <--- ["nickName", "realName"]` 一样处理 **1对多** 的映射。如果恰好都有值，将选择第一个。

### [解码中] Value的解析策略

#### 全局的值解析策略

SmartDecodingOption提供了三种解码选项，分别为：

```
public enum SmartDecodingOption {
    
    /// 用于解码 “Date” 值的策略
    case dateStrategy(JSONDecoder.DateDecodingStrategy)
    
    /// 用于解码 “Data” 值的策略
    case dataStrategy(JSONDecoder.DataDecodingStrategy)
    
    /// 用于不符合json的浮点值(IEEE 754无穷大和NaN)的策略
    case floatStrategy(JSONDecoder.NonConformingFloatDecodingStrategy)
}
```

##### Date

```
let dateFormatter = DateFormatter()
 dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let option: JSONDecoder.SmartDecodingOption = .dateStrategy(.formatted(dateFormatter))
guard let model = FeedOne.deserialize(from: json, options: [option]) else { return }
```

##### Data

```
let option: JSONDecoder.SmartDecodingOption = .dataStrategy(.base64)
guard let model = FeedOne.deserialize(from: json, options: [option]) else { return }
gurad let data = model.address, let url = String(data: data, encoding: .utf8) { else }
```

##### Float

```
let option: JSONDecoder.SmartDecodingOption = .floatStrategy(.convertFromString(positiveInfinity: "infinity", negativeInfinity: "-infinity", nan: "NaN"))
guard let model1 = FeedOne.deserialize(from: json, options: [option]) else {  return }
```



#### 局部的值解析策略

```
struct SmartModel: SmartCodable {
    var date1: Date?
    var date2: Date?
    var url: URL?
    var data: Data?
            
    // value的解析策略
    static func mappingForValue() -> [SmartValueTransformer]? {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        return [
            CodingKeys.url <--- SmartURLTransformer(prefix: "https://"),
            CodingKeys.date2 <--- SmartDateTransformer(),
            CodingKeys.date1 <--- SmartDateFormatTransformer(format),
            CodingKeys.data <--- SmartDataTransformer()
        ]
    }
}
```

您可以实现 `mappingForValue` 给每个属性设置不同的解析策略。

支持的类型：

* Date
* UIColor
* URL
* Data

如需其他类型可以提 **issue**。

##### 自定义解析策略

遵守该协议，实现协议方法。

```
public protocol ValueTransformable {
    associatedtype Object
    associatedtype JSON
    
    /// transform from ’json‘ to ’object‘
    func transformFromJSON(_ value: Any?) -> Object?
    
    /// transform to ‘json’ from ‘object’
    func transformToJSON(_ value: Object?) -> JSON?
}
```



### [解码后] 解析完成的回调

```
class Model: SmartDecodable {

    var name: String = ""
    var age: Int = 0
    var desc: String = ""
    required init() { }
    
    // 解析完成的回调
    func didFinishMapping() {    
        if name.isEmpty {
            desc = "\(age)岁的" + "人"
        } else {
            desc = "\(age)岁的" + name
        }
    }
}
```



## 调试日志

出现 **SmartLog Error** 日志代表着 **SmartCodable** 遇到了解析问题，走进了兼容。 并不代表着本次解析失败。

SmartCodable鼓励从根本上解决解析中的问题，即：不需要用到SmartCodable的兼容逻辑。 如果出现解析兼容的情况，修改Model中属性的定义，或要求数据方进行修正。为了更方便的定位问题。

调试日志，将提供辅助信息

```
 ========================  [Smart Decoding Log]  ========================
 Family 👈🏻 👀
    |- name    : Expected to decode String but found an array instead.
    |- location: Expected to decode String but found an array instead.
    |- date    : Expected to decode Date but found an array instead.
    |> father: Father
       |- name: Expected String value but found null instead.
       |- age : Expected to decode Int but found a string/data instead.
       |> dog: Dog
          |- hobby: Expected to decode String but found a number instead.
    |> sons: [Son]
       |- [Index 0] hobby: Expected to decode String but found a number instead.
       |- [Index 0] age  : Expected to decode Int but found a string/data instead.
       |- [Index 1] age  : Expected to decode Int but found an array instead.
 =========================================================================
```

新版本的日志：

* 以Model为单元进行和合并，减少了日志的数量。

* 合并相同的解析错误，减少了相同日志的干扰。
* 简化了日志内容，让日志一目了然。









## 进一步了解

我们提供了详细的示例工程，可以下载工程代码查看。






### 了解更多关于Codable & SmartCodable

这是Swift数据解析方案的系列文章：

[Swift数据解析(第一篇) - 技术选型](https://juejin.cn/post/7288517000581070902)

[Swift数据解析(第二篇) - Codable 上](https://juejin.cn/post/7288517000581087286)

[Swift数据解析(第二篇) - Codable 下](https://juejin.cn/post/7288517000581120054)

[Swift数据解析(第三篇) - Codable源码学习](https://juejin.cn/post/7288504491506090023)

[Swift数据解析(第四篇) - SmartCodable 上](https://juejin.cn/post/7288513881735151670)

[Swift数据解析(第四篇) - SmartCodable 下](https://juejin.cn/post/7288517000581169206)



### 联系我们

![QQ](https://github.com/intsig171/SmartCodable/assets/87351449/5d3a98fe-17ba-402f-aefe-3e7472f35f82)




## 加入我们

**SmartCodable** 是一个开源项目，我们欢迎所有对提高数据解析性能和健壮性感兴趣的开发者加入。无论是使用反馈、功能建议还是代码贡献，你的参与都将极大地推动 **SmartCodable** 项目的发展。


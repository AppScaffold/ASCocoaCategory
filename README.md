# ASCocoaCategory
A collection of UIKit and NSFoundation categories, make convenience methods to easily use. 

一个基于 UIKit 与 NSFoundation 收集的扩展方法集合

[![CI Status](http://img.shields.io/travis/appscaffold/ASCocoaCategory.svg?style=flat)](https://travis-ci.org/appscaffold/ASCocoaCategory)
[![Version](https://img.shields.io/cocoapods/v/ASCocoaCategory.svg?style=flat)](http://cocoapods.org/pods/ASCocoaCategory)
[![License](https://img.shields.io/cocoapods/l/ASCocoaCategory.svg?style=flat)](http://cocoapods.org/pods/ASCocoaCategory)
[![Platform](https://img.shields.io/cocoapods/p/ASCocoaCategory.svg?style=flat)](http://cocoapods.org/pods/ASCocoaCategory)

## 使用

你可以在测试工程中运行 `pod install` 安装相关 category


## 安装

你可以用pod 引入对应的工程

```ruby
pod "ASCocoaCategory"
```

## 贡献

欢迎大家将比较好的 category 贡献在这里，避免重复造轮子。

不过在贡献代码前，请遵从一定的规范，这也是为了方便更多人理解与使用。

- 不同的 frameworks category 对应在不同的目录下。比如 UIKit里的 UIColor放置路径
- Category 的文件名用 Class名+AS* 来表示, * 表示功能该 category 的功能域。比如 `UIColor+ASHex`，功能粒度不能太粗，不能在一个category中包含太多功能，文件尽量短小精干
- 因为日后会根据功能域，抽离出通用Category与非通用Category，所以请务必分开各自的功能域。当不确定一个Category该放哪儿时，而它又有可能是大多数场景用到时，放置在 +ASCommon 类中。比如 UIColor+ASCommon
- .h 的公共接口，要以 as_ 开头。比如 `+ (UIColor*)as_whiteColorWithAlpha:(CGFloat)alphaValue;`
- .h 的公共接口注释必须用英文，当你不知道如何描述时，请留空，待后面完善。
- .m 实现文件中的注释非必须用英文，但一定要描述清楚方法的实现原理。

## 作者

squarezw, oolongtea, Whirlwind

## 版权

ASCocoaCategory is available under the MIT license. See the LICENSE file for more info.

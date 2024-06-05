// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: http/Login.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Http_RegisterReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var account: String = String()

  public var pwd: String = String()

  public var phoneNum: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///--------------------Login----------------
public struct Http_LoginReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var account: String = String()

  public var pwdMd5: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Http_LoginResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var token: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Http_RegisterReq: @unchecked Sendable {}
extension Http_LoginReq: @unchecked Sendable {}
extension Http_LoginResp: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "Http"

extension Http_RegisterReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RegisterReq"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .same(proto: "pwd"),
    3: .same(proto: "phoneNum"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.pwd) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.phoneNum) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 1)
    }
    if !self.pwd.isEmpty {
      try visitor.visitSingularStringField(value: self.pwd, fieldNumber: 2)
    }
    if self.phoneNum != 0 {
      try visitor.visitSingularInt32Field(value: self.phoneNum, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Http_RegisterReq, rhs: Http_RegisterReq) -> Bool {
    if lhs.account != rhs.account {return false}
    if lhs.pwd != rhs.pwd {return false}
    if lhs.phoneNum != rhs.phoneNum {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Http_LoginReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoginReq"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .standard(proto: "pwd_md5"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.pwdMd5) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 1)
    }
    if !self.pwdMd5.isEmpty {
      try visitor.visitSingularStringField(value: self.pwdMd5, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Http_LoginReq, rhs: Http_LoginReq) -> Bool {
    if lhs.account != rhs.account {return false}
    if lhs.pwdMd5 != rhs.pwdMd5 {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Http_LoginResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoginResp"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.token) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Http_LoginResp, rhs: Http_LoginResp) -> Bool {
    if lhs.token != rhs.token {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

//
//  SocketEngineClient.swift
//  Socket.IO-Swift
//
//  Created by Erik Little on 3/19/15.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

@objc public protocol SocketEngineClient {
    var ackQueue:dispatch_queue_attr_t! {get}
    var handleQueue:dispatch_queue_attr_t! {get}
    var emitQueue:dispatch_queue_attr_t! {get}
    var reconnecting:Bool {get}
    var socketURL:String {get}
    var secure:Bool {get}
    
    func parseSocketMessage(msg:String)
    func parseBinaryData(data:NSData)
    func pollingDidFail(err:NSError)
    func webSocketDidCloseWithCode(code:Int, reason:String, wasClean:Bool)
    func webSocketDidFailWithError(error:NSError)
}

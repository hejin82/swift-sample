//
//  Document.swift
//  Notes
//
//  Created by 何進 on 2018/4/15.
//  Copyright © 2018年 何進. All rights reserved.
//

import Cocoa

enum ErrorCode: Int {
    /// we could't find the document at all
    case cannotAccessDocument
    /// we could't access any file wrapper inside this document
    case cannotLoadFileWrappers
    /// we could't load the text.rtf file
    case cannotLoadText
    /// we could't access the attachments folder
    case cannotAccessAttachements
    /// we could't save the text.rtf file
    case cannotSaveText
    /// we could't save an attachment
    case cannotSaveAttachment
}

class Document: NSDocument {

    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override class var autosavesInPlace: Bool {
        return true
    }

    override var windowNibName: NSNib.Name? {
        // Returns the nib file name of the document
        // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this property and override -makeWindowControllers instead.
        return NSNib.Name("Document")
    }

    override func data(ofType typeName: String) throws -> Data {
        // Insert code here to write your document to data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning nil.
        // You can also choose to override fileWrapperOfType:error:, writeToURL:ofType:error:, or writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    override func read(from data: Data, ofType typeName: String) throws {
        // Insert code here to read your document from the given data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning false.
        // You can also choose to override readFromFileWrapper:ofType:error: or readFromURL:ofType:error: instead.
        // If you override either of these, you should also override -isEntireFileLoaded to return false if the contents are lazily loaded.
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    let ErrorDomain = "NotesErrorDomain";
    func err(_ code: ErrorCode, _ userInfo: [AnyHashable: Any]? = nil) -> NSError {
        return NSError(domain: ErrorDomain, code: code.rawValue, userInfo: nil)
    }
    
    override func fileWrapper(ofType typeName: String) throws -> FileWrapper {
        let textRTFData = try self.text.data(from: NSRange(0 ..< self.text.length), documetnAttributes: [)
    }

}


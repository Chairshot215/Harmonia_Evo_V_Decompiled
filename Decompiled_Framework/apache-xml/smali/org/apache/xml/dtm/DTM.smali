.class public interface abstract Lorg/apache/xml/dtm/DTM;
.super Ljava/lang/Object;
.source "DTM.java"


# static fields
.field public static final ATTRIBUTE_NODE:S = 0x2s

.field public static final CDATA_SECTION_NODE:S = 0x4s

.field public static final COMMENT_NODE:S = 0x8s

.field public static final DOCUMENT_FRAGMENT_NODE:S = 0xbs

.field public static final DOCUMENT_NODE:S = 0x9s

.field public static final DOCUMENT_TYPE_NODE:S = 0xas

.field public static final ELEMENT_NODE:S = 0x1s

.field public static final ENTITY_NODE:S = 0x6s

.field public static final ENTITY_REFERENCE_NODE:S = 0x5s

.field public static final NAMESPACE_NODE:S = 0xds

.field public static final NOTATION_NODE:S = 0xcs

.field public static final NTYPES:S = 0xes

.field public static final NULL:I = -0x1

.field public static final PROCESSING_INSTRUCTION_NODE:S = 0x7s

.field public static final ROOT_NODE:S = 0x0s

.field public static final TEXT_NODE:S = 0x3s


# virtual methods
.method public abstract appendChild(IZZ)V
.end method

.method public abstract appendTextChild(Ljava/lang/String;)V
.end method

.method public abstract dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract documentRegistration()V
.end method

.method public abstract documentRelease()V
.end method

.method public abstract getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
.end method

.method public abstract getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method public abstract getDTDHandler()Lorg/xml/sax/DTDHandler;
.end method

.method public abstract getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
.end method

.method public abstract getDocument()I
.end method

.method public abstract getDocumentAllDeclarationsProcessed()Z
.end method

.method public abstract getDocumentBaseURI()Ljava/lang/String;
.end method

.method public abstract getDocumentEncoding(I)Ljava/lang/String;
.end method

.method public abstract getDocumentRoot(I)I
.end method

.method public abstract getDocumentStandalone(I)Ljava/lang/String;
.end method

.method public abstract getDocumentSystemIdentifier(I)Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentVersion(I)Ljava/lang/String;
.end method

.method public abstract getElementById(Ljava/lang/String;)I
.end method

.method public abstract getEntityResolver()Lorg/xml/sax/EntityResolver;
.end method

.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public abstract getExpandedTypeID(I)I
.end method

.method public abstract getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getFirstAttribute(I)I
.end method

.method public abstract getFirstChild(I)I
.end method

.method public abstract getFirstNamespaceNode(IZ)I
.end method

.method public abstract getLastChild(I)I
.end method

.method public abstract getLevel(I)S
.end method

.method public abstract getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
.end method

.method public abstract getLocalName(I)Ljava/lang/String;
.end method

.method public abstract getLocalNameFromExpandedNameID(I)Ljava/lang/String;
.end method

.method public abstract getNamespaceFromExpandedNameID(I)Ljava/lang/String;
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public abstract getNextAttribute(I)I
.end method

.method public abstract getNextNamespaceNode(IIZ)I
.end method

.method public abstract getNextSibling(I)I
.end method

.method public abstract getNode(I)Lorg/w3c/dom/Node;
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public abstract getNodeNameX(I)Ljava/lang/String;
.end method

.method public abstract getNodeType(I)S
.end method

.method public abstract getNodeValue(I)Ljava/lang/String;
.end method

.method public abstract getOwnerDocument(I)I
.end method

.method public abstract getParent(I)I
.end method

.method public abstract getPrefix(I)Ljava/lang/String;
.end method

.method public abstract getPreviousSibling(I)I
.end method

.method public abstract getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
.end method

.method public abstract getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract getStringValueChunk(II[I)[C
.end method

.method public abstract getStringValueChunkCount(I)I
.end method

.method public abstract getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasChildNodes(I)Z
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public abstract isCharacterElementContentWhitespace(I)Z
.end method

.method public abstract isDocumentAllDeclarationsProcessed(I)Z
.end method

.method public abstract isNodeAfter(II)Z
.end method

.method public abstract isSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
.end method

.method public abstract needsTwoThreads()Z
.end method

.method public abstract setDocumentBaseURI(Ljava/lang/String;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract supportsPreStripping()Z
.end method

.class public Lorg/apache/xml/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "DTMDocumentImpl.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DOCHANDLE_MASK:I = -0x800000

.field protected static final DOCHANDLE_SHIFT:B = 0x16t

.field protected static final NODEHANDLE_MASK:I = 0x7fffff

.field private static final fixednames:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field currentParent:I

.field private done:Z

.field gotslot:[I

.field private m_char:Lorg/apache/xml/utils/FastStringBuffer;

.field private m_char_current_start:I

.field protected m_currentNode:I

.field m_docElement:I

.field m_docHandle:I

.field protected m_documentBaseURI:Ljava/lang/String;

.field private m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field private m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field m_isError:Z

.field private m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

.field nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

.field previousSibling:I

.field private previousSiblingWasParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "#text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cdata_section"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "#comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#document"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "#document-fragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method

.method private final appendNode(IIII)I
    .locals 4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return v0
.end method

.method private processAccumulatedText()V
    .locals 3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_0
    return-void
.end method


# virtual methods
.method appendAttribute(IIIZII)V
    .locals 8

    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x2

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v3, 0x0

    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v1, 0x3

    move v2, v0

    move v3, p5

    move v4, p6

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method public appendChild(IZZ)V
    .locals 3

    const/high16 v1, -0x80

    and-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method appendComment(II)V
    .locals 5

    const/16 v1, 0x8

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    move v3, p1

    move v4, p2

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method appendEndDocument()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method appendEndElement()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v0, v0, v4

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method appendNSDeclaration(IIZ)V
    .locals 8

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/lit8 v2, v6, 0xd

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v4, 0x0

    move v5, p2

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method appendStartDocument()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    return-void
.end method

.method appendStartElement(III)V
    .locals 8

    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v3, 0x0

    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    :cond_0
    return-void
.end method

.method appendTextChild(II)V
    .locals 5

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    move v3, p1

    move v4, p2

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    invoke-virtual {p0, v0, p3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public documentRegistration()V
    .locals 0

    return-void
.end method

.method public documentRelease()V
    .locals 0

    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    const v3, 0x7fffff

    and-int/2addr p1, v3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    if-ne v2, v6, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    if-ne v3, v0, :cond_1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    :goto_1
    return v3

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget p1, v3, v6

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getContentBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ContentHandler;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentRoot()I
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 1

    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedTypeID(I)I
    .locals 9

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v6, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getFirstAttribute(I)I
    .locals 5

    const v4, 0xffff

    const/4 v3, 0x0

    const/4 v0, -0x1

    const v1, 0x7fffff

    and-int/2addr p1, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    and-int/2addr v2, v4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    and-int/2addr v2, v4

    if-ne v1, v2, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v0, p1

    goto :goto_0
.end method

.method public getFirstChild(I)I
    .locals 9

    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    const v3, 0x7fffff

    and-int/2addr p1, v3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    and-int/2addr v3, v8

    int-to-short v2, v3

    if-eq v2, v6, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    and-int/2addr v3, v8

    if-ne v7, v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v1, v3, v7

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    if-ne v3, p1, :cond_1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int v0, v1, v3

    goto :goto_1
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLastChild(I)I
    .locals 3

    const v2, 0x7fffff

    and-int/2addr p1, v2

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v2, v0

    return v2
.end method

.method public getLevel(I)S
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 6

    const v5, 0xffff

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/2addr v3, v5

    int-to-short v2, v3

    const-string v1, ""

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v4, v0, v5

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextAttribute(I)I
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x2

    const v2, 0x7fffff

    and-int/2addr p1, v2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v4

    if-eq v2, v1, :cond_0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public getNextDescendant(II)I
    .locals 7

    const v3, 0x7fffff

    const/4 v6, 0x2

    const/4 v2, -0x1

    and-int/2addr p1, v3

    and-int/2addr p2, v3

    if-nez p2, :cond_2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-le p2, p1, :cond_5

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v1, v3

    if-ne v1, v6, :cond_3

    add-int/lit8 p2, p2, 0x2

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsUsed()I

    move-result v3

    if-le p2, v3, :cond_1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x1

    aget v0, v3, v4

    if-lt v0, p1, :cond_0

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    add-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public getNextFollowing(II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getNextPreceding(II)I
    .locals 3

    const v0, 0x7fffff

    and-int/2addr p2, v0

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->specialFind(II)I

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNextSibling(I)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, -0x1

    const v4, 0x7fffff

    and-int/2addr p1, v4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v2, v4

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v4, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_3

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v4, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    goto :goto_0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 8

    const v7, 0xffff

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-short v3, v4

    sget-object v4, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    aget-object v1, v4, v3

    if-nez v1, :cond_0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v5, v0, v7

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType(I)S
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    :pswitch_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNsNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getOwnerDocument(I)I
    .locals 1

    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method public getParent(I)I
    .locals 3

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    const-string v1, ""

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public getPrefixNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getPreviousSibling(I)I
    .locals 5

    const v3, 0x7fffff

    and-int/2addr p1, v3

    if-nez p1, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    const/4 v0, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    :goto_1
    if-eq v1, p1, :cond_1

    move v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    return-object v2

    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStringValueChunk(II[I)[C
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method public getStringValueChunkCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChildNodes(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method final initDocument(I)V
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x0

    shl-int/lit8 v0, p1, 0x16

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/16 v2, 0x9

    move v4, v3

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNodeAfter(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 0

    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method setContentBuffer(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public setLocalNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setNsNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setPrefixNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    const/4 v12, 0x0

    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    if-nez p4, :cond_3

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v10, v11, -0x1

    :goto_1
    if-ltz v10, :cond_5

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "xmlns:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v12, 0x0

    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :goto_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v11

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v11, -0x1

    :goto_3
    if-ltz v10, :cond_9

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "xmlns:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v12, 0x0

    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_4
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v9

    const-string v1, "xmlns"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ID"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iget v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v7, v9, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    :cond_6
    iput v9, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    :cond_8
    const-string v12, ""

    move-object/from16 p2, p3

    goto :goto_4

    :cond_9
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

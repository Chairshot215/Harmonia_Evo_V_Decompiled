.class public abstract Lorg/apache/xml/serializer/ToStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToStream$BoolStack;,
        Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
    }
.end annotation


# static fields
.field private static final COMMENT_BEGIN:Ljava/lang/String; = "<!--"

.field private static final COMMENT_END:Ljava/lang/String; = "-->"

.field private static final s_systemLineSep:[C


# instance fields
.field protected m_cdataStartCalled:Z

.field protected m_charInfo:Lorg/apache/xml/serializer/CharInfo;

.field protected m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

.field protected m_escaping:Z

.field private m_expandDTDEntities:Z

.field protected m_inDoctype:Z

.field m_isUTF8:Z

.field protected m_ispreserve:Z

.field protected m_isprevtext:Z

.field protected m_lineSep:[C

.field protected m_lineSepLen:I

.field protected m_lineSepUse:Z

.field m_outputStream:Ljava/io/OutputStream;

.field protected m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_shouldFlush:Z

.field protected m_spaceBeforeClose:Z

.field m_startNewLine:Z

.field private m_writer_set_by_user:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    return-void
.end method

.method private DTDprolog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-eqz v1, :cond_1

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    :cond_1
    return-void
.end method

.method private accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result v2

    if-ne p3, v2, :cond_2

    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    add-int/lit8 v3, p3, 0x1

    if-lt v3, p5, :cond_0

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_INVALID_UTF16_SURROGATE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    aget-char v1, p4, p3

    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_INVALID_UTF16_SURROGATE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {p2, v1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v0

    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v2, v2, 0x2

    :cond_2
    :goto_0
    return v2

    :cond_3
    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p6, :cond_6

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-nez p6, :cond_8

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez v3, :cond_8

    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_1
.end method

.method private addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "{}"

    const/4 v5, 0x0

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static isCharacterInC0orC1Range(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    const/16 v2, 0xd

    if-ne p0, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x7f

    if-lt p0, v2, :cond_3

    const/16 v2, 0x9f

    if-le p0, v2, :cond_1

    :cond_3
    if-lt p0, v0, :cond_4

    const/16 v2, 0x1f

    if-le p0, v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isEscapingDisabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v0

    return v0
.end method

.method private static isNELorLSEPCharacter(C)Z
    .locals 1

    const/16 v0, 0x85

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printSpace(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processDirty([CIICIZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v9, p5, 0x1

    if-le p3, v9, :cond_0

    sub-int v8, p3, v9

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, v9, v8}, Ljava/io/Writer;->write([CII)V

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p4, :cond_1

    if-eqz p6, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return p3

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move v5, p2

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    goto :goto_0
.end method

.method private processLineFeed([CIILjava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    aget-char v0, v0, v2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    move p3, p2

    goto :goto_0
.end method

.method private resetToStream()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    return-void
.end method

.method private setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v7, 0x7b

    if-ne v7, v1, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v7, 0x7d

    if-ne v7, v1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/xml/serializer/ToStream;->setCdataSectionElements(Ljava/util/Vector;)V

    :cond_6
    return-void
.end method

.method private setOutputStreamInternal(Ljava/io/OutputStream;Z)V
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    const-string v4, "encoding"

    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "WINDOWS-1250"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "US-ASCII"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ASCII"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xml/serializer/WriterToASCI;

    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToASCI;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: encoding \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    :try_start_1
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_3
    :goto_2
    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method private setWriterInternal(Ljava/io/Writer;Z)V
    .locals 5

    iput-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :goto_0
    instance-of v2, v1, Lorg/apache/xml/serializer/WriterChain;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :cond_1
    return-void

    :cond_2
    check-cast v1, Lorg/apache/xml/serializer/WriterChain;

    invoke-interface {v1}, Lorg/apache/xml/serializer/WriterChain;->getWriter()Ljava/io/Writer;

    move-result-object v1

    goto :goto_0
.end method

.method private writeOutCleanChars([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v1, p3, 0x1

    if-ge v1, p2, :cond_0

    sub-int v0, p2, v1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method


# virtual methods
.method accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p7, :cond_1

    const/16 v1, 0xa

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    :goto_0
    add-int/lit8 p3, p3, 0x1

    :cond_0
    return p3

    :cond_1
    if-eqz p6, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez p6, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 14

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v10

    :goto_0
    if-ltz v10, :cond_4

    const/4 v11, 0x0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v1, v10}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p5

    invoke-virtual {v1, v10, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_2
    :goto_1
    return v13

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p2

    invoke-virtual {v1, p1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_4
    if-eqz p6, :cond_7

    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, v12}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-result-object v9

    if-eqz v9, :cond_6

    iget v1, v9, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-ne v1, v2, :cond_6

    iget-object v1, v9, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object v12

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2
.end method

.method public addCdataSectionElements(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    goto :goto_0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    const-string v2, "<!ATTLIST "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected cdata([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x1

    move v7, p2

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    :cond_1
    if-lt p3, v8, :cond_5

    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    if-eqz v8, :cond_2

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_2
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->isEscapingDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    :goto_1
    if-eqz v8, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_4

    invoke-super {p0, p1, v7, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCDATAEvent([CII)V

    :cond_4
    return-void

    :cond_5
    move v8, v0

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_2
    :goto_1
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    if-nez v11, :cond_3

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v11, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    goto :goto_0

    :cond_4
    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    goto :goto_1

    :cond_5
    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_6
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v11}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v11

    if-nez v11, :cond_7

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    if-nez v11, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v11, :cond_0

    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    goto :goto_0

    :cond_8
    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_9
    add-int v3, p2, p3

    add-int/lit8 v6, p2, -0x1

    :try_start_0
    iget-object v10, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v5, 0x1

    move v4, p2

    :goto_2
    if-ge v4, v3, :cond_b

    if-eqz v5, :cond_b

    aget-char v1, p1, v4

    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    sparse-switch v1, :sswitch_data_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :sswitch_2
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#13;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :sswitch_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    if-lt v4, v3, :cond_c

    if-nez v5, :cond_d

    :cond_c
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_d
    :goto_3
    if-ge v4, v3, :cond_13

    aget-char v0, p1, v4

    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v6, v4

    :cond_e
    :goto_4
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    const/16 v11, 0x1f

    if-gt v0, v11, :cond_10

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    move v6, v4

    goto :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v6

    goto :goto_4

    :pswitch_3
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#13;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v6, v4

    goto :goto_4

    :cond_10
    const/16 v11, 0x7f

    if-lt v0, v11, :cond_e

    const/16 v11, 0x9f

    if-gt v0, v11, :cond_11

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    move v6, v4

    goto :goto_4

    :cond_11
    const/16 v11, 0x2028

    if-ne v0, v11, :cond_12

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#8232;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v6, v4

    goto :goto_4

    :cond_12
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    move v6, v4

    goto :goto_4

    :cond_13
    add-int/lit8 v9, v6, 0x1

    if-le v4, v9, :cond_14

    sub-int v7, v4, v9

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v11, p1, v9, v7}, Ljava/io/Writer;->write([CII)V

    :cond_14
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v11, :cond_0

    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v11, Lorg/xml/sax/SAXException;

    invoke-direct {v11, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v11

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected charactersRaw([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected closeCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v2}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public comment([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v7, 0x1

    const/16 v10, 0x2d

    const/4 v8, 0x0

    move v4, p2

    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v9, v9, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v8, v9, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_2
    :goto_1
    add-int v2, p2, p3

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    :cond_4
    iget-object v6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v9, "<!--"

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, p2

    :goto_2
    if-ge v1, v2, :cond_8

    if-eqz v5, :cond_5

    aget-char v9, p1, v1

    if-ne v9, v10, :cond_5

    sub-int v9, v1, p2

    invoke-virtual {v6, p1, p2, v9}, Ljava/io/Writer;->write([CII)V

    const-string v9, " -"

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p2, v1, 0x1

    :cond_5
    aget-char v9, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_7

    move v5, v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    iput-boolean v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    goto :goto_1

    :cond_7
    move v5, v8

    goto :goto_3

    :cond_8
    if-lez p3, :cond_a

    sub-int v3, v2, p2

    if-lez v3, :cond_9

    :try_start_1
    invoke-virtual {v6, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    :cond_9
    add-int/lit8 v8, v2, -0x1

    aget-char v8, p1, v8

    if-ne v8, v10, :cond_a

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(I)V

    :cond_a
    const-string v8, "-->"

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iput-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v7, :cond_0

    invoke-super {p0, p1, v4, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    const-string v2, "<!ELEMENT "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public endDTD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-nez v2, :cond_1

    const-string v2, "]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    :cond_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    if-eqz v3, :cond_5

    const-string v3, " />"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_3
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_4

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    :cond_8
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v3

    goto :goto_2
.end method

.method public endNonEscaping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

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

.method protected ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v10, 0x0

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_0

    const-string v2, ""

    :goto_0
    if-lez v10, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v1, "http://www.w3.org/2000/xmlns/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {p0, v5, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v4, "http://www.w3.org/2000/xmlns/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    move-object v2, v5

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_3

    const-string v10, ""

    :goto_1
    if-eqz v10, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v10, p1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/2000/xmlns/"

    if-eqz v9, :cond_4

    const-string v2, "xmlns"

    :goto_2
    if-eqz v9, :cond_5

    const-string v3, "xmlns"

    :goto_3
    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void

    :cond_2
    move v9, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    move-object v2, v10

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method protected escapingNotNeeded(C)Z
    .locals 2

    const/16 v1, 0x7f

    if-ge p1, v1, :cond_2

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    const/16 v1, 0xd

    if-eq v1, p1, :cond_0

    const/16 v1, 0x9

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v0

    goto :goto_0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "\" >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected firePseudoAttributes()V
    .locals 8

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v3, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;

    invoke-direct {v3, p0, v2}, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;-><init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, v3, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    :cond_0
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v5, 0xb

    const/4 v6, 0x0

    array-length v7, v0

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public flushPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final flushWriter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v2, :cond_1

    :try_start_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flush()V

    :cond_0
    :goto_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToASCI;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v2

    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getIndentAmount()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 7

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropDefaultKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_0
.end method

.method protected indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    return-void
.end method

.method protected indent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V

    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToStream;->printSpace(I)V

    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "\" >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method outputDocTypeDecl(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    const-string v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    const/4 p2, 0x0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    :cond_4
    const/16 v4, 0x22

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method protected final outputLineSep()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "=\""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->resetToStream()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/TreeWalker;

    invoke-direct {v1, p0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    if-lez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    const/16 v5, 0x7b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x7d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    :cond_3
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    return v0
.end method

.method public setIndentAmount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public setLineSepUse(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    return v0
.end method

.method public setNewLine([C)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    array-length v0, p1

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 8

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/serializer/ToStream;->setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v7, "method"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    :cond_3
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22

    if-eqz p2, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/apache/xml/serializer/ToStream;->getFirstCharLocName(Ljava/lang/String;)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void

    :pswitch_1
    const-string v18, "cdata-section-elements"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v4, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElements(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v18, "doctype-system"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v18, "doctype-public"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    const-string v18, "-//W3C//DTD XHTML"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    goto :goto_0

    :pswitch_3
    move-object/from16 v10, p2

    const-string v18, "encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static/range {p2 .. p2}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v18, "mime-name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p3, :cond_4

    if-eqz v11, :cond_5

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    if-nez p3, :cond_0

    if-eqz v13, :cond_5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    :cond_5
    invoke-static {v10}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v5

    if-eqz v10, :cond_6

    iget-object v0, v5, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    sget-object v18, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v19, "ER_ENCODING_NOT_SUPPORTED"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Warning: encoding \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" not supported, using "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    invoke-super/range {p0 .. p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v16

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v10, "UTF-8"

    const-string p2, "UTF-8"

    invoke-static {v10}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v5

    :cond_6
    if-eqz p3, :cond_7

    if-nez v13, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    if-eqz v10, :cond_8

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getWriter()Ljava/io/Writer;

    move-result-object v17

    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    :cond_9
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    goto/16 :goto_0

    :cond_a
    :try_start_1
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v18

    goto :goto_1

    :cond_b
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_4
    const-string v18, "{http://xml.apache.org/xalan}indent-amount"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    goto/16 :goto_0

    :cond_c
    const-string v18, "indent"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_5
    const-string v18, "{http://xml.apache.org/xalan}line-separator"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    goto/16 :goto_0

    :pswitch_6
    const-string v18, "media-type"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    const-string v18, "omit-xml-declaration"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    :pswitch_8
    const-string v18, "standalone"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v18, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    :cond_0
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void
.end method

.method protected shouldIndent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToStream;->setDoctypeSystem(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->setDoctypePublic(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    iput-boolean v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iput-boolean v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    :cond_2
    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v2}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_4
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/serializer/ToStream;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_8

    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_8
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->characters(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    :cond_1
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    return-void
.end method

.method public startNonEscaping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v10, v0, 0x1

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "xmlns"

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    :goto_1
    return v11

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "\" NDATA "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x3b

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    array-length v0, v0

    if-le v5, v0, :cond_0

    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_7

    aget-char v2, v4, v3

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    const/16 v0, 0x1f

    if-gt v2, v0, :cond_2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "&#9;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "&#10;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v0, "&#13;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x7f

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x9f

    if-gt v2, v0, :cond_4

    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x2028

    if-ne v2, v0, :cond_5

    const-string v0, "&#8232;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_6
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method writeNormalizedChars([CIIZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v9, 0x5d

    const/16 v8, 0x3b

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_a

    aget-char v0, p1, v2

    const/16 v5, 0xa

    if-ne v5, v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_1
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v5, v1, -0x2

    if-ge v2, v5, :cond_4

    if-ne v9, v0, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, p1, v5

    if-ne v9, v5, :cond_4

    const/16 v5, 0x3e

    add-int/lit8 v6, v2, 0x2

    aget-char v6, p1, v6

    if-ne v5, v6, :cond_4

    const-string v5, "]]]]><![CDATA[>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p4, :cond_5

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v5, :cond_5

    const-string v5, "<![CDATA["

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_5
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_7
    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_9
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method protected writeUTF16Surrogate(C[CII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    add-int/lit8 v6, p3, 0x1

    move/from16 v0, p4

    if-lt v6, v0, :cond_0

    new-instance v6, Ljava/io/IOException;

    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_INVALID_UTF16_SURROGATE"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move v3, p1

    add-int/lit8 v6, p3, 0x1

    aget-char v4, p2, v6

    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/IOException;

    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_INVALID_UTF16_SURROGATE"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v6, p1, v4}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(CC)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    move/from16 v0, p3

    invoke-virtual {v5, p2, v0, v6}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v3, v4}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v1

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    move/from16 v0, p3

    invoke-virtual {v5, p2, v0, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

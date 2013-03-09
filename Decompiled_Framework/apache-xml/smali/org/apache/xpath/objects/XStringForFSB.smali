.class public Lorg/apache/xpath/objects/XStringForFSB;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForFSB.java"


# static fields
.field static final serialVersionUID:J = -0x154673048d1b5474L


# instance fields
.field protected m_hash:I

.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_FSB_CANNOT_TAKE_STRING"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    iput p2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iput p3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static isSpace(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public charAt(I)C
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 10

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    move v8, v7

    :goto_0
    add-int/lit8 v7, v8, -0x1

    if-eqz v8, :cond_1

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v9, v0, v1

    :goto_1
    return v9

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    sub-int v9, v5, v6

    goto :goto_1
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 10

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    move v8, v7

    :goto_0
    add-int/lit8 v7, v8, -0x1

    if-eqz v8, :cond_1

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v9, v0, v1

    :goto_1
    return v9

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    sub-int v9, v5, v6

    goto :goto_1
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/apache/xpath/objects/XStringForFSB;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/xml/utils/XMLString;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v3, v4, -0x1

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v7

    if-ne v3, v7, :cond_3

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v2, 0x0

    move v4, v3

    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v7

    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v2, 0x0

    move v4, v3

    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 14

    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    iget v13, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v5, v12, v13

    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    new-array v0, v12, [C

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget v9, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    move v3, v2

    :goto_0
    if-ge v9, v5, :cond_5

    invoke-virtual {v6, v9}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xpath/objects/XStringForFSB;->isSpace(C)Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v7, :cond_3

    const/16 v12, 0x20

    if-eq v12, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    const/16 v12, 0x20

    aput-char v12, v0, v3

    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    add-int/lit8 v12, v2, -0x1

    aget-char v8, v0, v12

    const/16 v12, 0x2e

    if-eq v8, v12, :cond_1

    const/16 v12, 0x21

    if-eq v8, v12, :cond_1

    const/16 v12, 0x3f

    if-eq v8, v12, :cond_1

    const/4 v7, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    const/4 v7, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v3, 0x1

    aput-char v1, v0, v3

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_8

    const/4 v12, 0x1

    if-gt v12, v3, :cond_8

    const/16 v12, 0x20

    add-int/lit8 v13, v3, -0x1

    aget-char v13, v0, v13

    if-ne v12, v13, :cond_8

    const/4 v4, 0x1

    add-int/lit8 v2, v3, -0x1

    :goto_2
    const/4 v10, 0x0

    if-eqz p1, :cond_6

    if-lez v2, :cond_6

    const/16 v12, 0x20

    const/4 v13, 0x0

    aget-char v13, v0, v13

    if-ne v12, v13, :cond_6

    const/4 v4, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_6
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v11

    if-eqz v4, :cond_7

    sub-int v12, v2, v10

    invoke-virtual {v11, v0, v10, v12}, Lorg/apache/xml/utils/XMLStringFactory;->newstr([CII)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method public fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xml/utils/FastStringBuffer;

    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 7

    sub-int v5, p2, p1

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le v5, v6, :cond_0

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    :cond_0
    array-length v6, p3

    sub-int/2addr v6, p4

    if-le v5, v6, :cond_1

    array-length v6, p3

    sub-int v5, v6, p4

    :cond_1
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v6, p1

    add-int v2, v6, v5

    move v0, p4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v4, p1, v6

    move v1, v0

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v6

    aput-char v6, p3, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasString()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/xpath/objects/XString;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 6

    const/4 v3, -0x1

    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    add-int v2, v4, v5

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_0
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v4, p2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_3

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    sub-int v3, v1, v3

    :cond_1
    :goto_1
    return v3

    :cond_2
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-lt p2, v4, :cond_0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    return v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v4, v6, p2

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v7, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    add-int v3, v6, v7

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    if-ltz p2, :cond_0

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int/2addr v6, v1

    if-le p2, v6, :cond_2

    :cond_0
    :goto_0
    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v6

    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    return-object v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 4

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int v0, v2, p1

    if-gtz v0, :cond_0

    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v2, p1

    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    goto :goto_0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 4

    sub-int v0, p2, p1

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    :cond_0
    if-gtz v0, :cond_1

    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_0
    return-object v2

    :cond_1
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v2, p1

    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    goto :goto_0
.end method

.method public toDouble()D
    .locals 9

    const-wide/high16 v4, 0x7ff8

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v8, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v6, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-eq v1, v6, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v6, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_7

    const/16 v6, 0x30

    if-lt v0, v6, :cond_4

    const/16 v6, 0x39

    if-le v0, v6, :cond_7

    :cond_4
    :goto_3
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v6, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_5
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ne v1, v6, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/apache/xpath/objects/XString;
.super Lorg/apache/xpath/objects/XObject;
.source "XString.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# static fields
.field public static final EMPTYSTRING:Lorg/apache/xpath/objects/XString; = null

.field static final serialVersionUID:J = 0x1c0a273b4816c5fdL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static isSpace(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bool()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z

    return-void
.end method

.method public charAt(I)C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    :goto_0
    add-int/lit8 v6, v7, -0x1

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v0

    invoke-interface {p1, v3}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v8, v0, v1

    :goto_1
    return v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v6

    goto :goto_0

    :cond_1
    sub-int v8, v4, v5

    goto :goto_1
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 3

    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "Java 1.2 method, not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->hasString()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xml/utils/XMLString;->equals(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v4, v0, :cond_1

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->bool()Z

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->num()D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v2

    goto :goto_0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 13

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v5

    new-array v0, v5, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v5, v0, v12}, Lorg/apache/xpath/objects/XString;->getChars(II[CI)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    aget-char v11, v0, v8

    invoke-static {v11}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_0
    move v2, v8

    const/4 v6, 0x0

    move v3, v2

    :goto_1
    if-ge v8, v5, :cond_7

    aget-char v1, v0, v8

    invoke-static {v1}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_5

    const/16 v11, 0x20

    if-eq v11, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    const/16 v11, 0x20

    aput-char v11, v0, v3

    if-eqz p3, :cond_4

    if-eqz v8, :cond_4

    add-int/lit8 v11, v8, -0x1

    aget-char v7, v0, v11

    const/16 v11, 0x2e

    if-eq v7, v11, :cond_2

    const/16 v11, 0x21

    if-eq v7, v11, :cond_2

    const/16 v11, 0x3f

    if-eq v7, v11, :cond_2

    const/4 v6, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    const/4 v6, 0x1

    move v2, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v3, 0x1

    aput-char v1, v0, v3

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_a

    const/4 v11, 0x1

    if-gt v11, v3, :cond_a

    const/16 v11, 0x20

    add-int/lit8 v12, v3, -0x1

    aget-char v12, v0, v12

    if-ne v11, v12, :cond_a

    const/4 v4, 0x1

    add-int/lit8 v2, v3, -0x1

    :goto_3
    const/4 v9, 0x0

    if-eqz p1, :cond_8

    if-lez v2, :cond_8

    const/16 v11, 0x20

    const/4 v12, 0x0

    aget-char v12, v0, v12

    if-ne v11, v12, :cond_8

    const/4 v4, 0x1

    add-int/lit8 v9, v9, 0x1

    :cond_8
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v10

    if-eqz v4, :cond_9

    new-instance v11, Ljava/lang/String;

    sub-int v12, v2, v9

    invoke-direct {v11, v0, v9, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10, v11}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    :cond_9
    return-object p0

    :cond_a
    move v2, v3

    goto :goto_3
.end method

.method public getChars(II[CI)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "#STRING"

    return-object v0
.end method

.method public hasString()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public num()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    return v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 7

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v2

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v0

    if-ltz p2, :cond_0

    sub-int v5, v2, v0

    if-le p2, v5, :cond_2

    :cond_0
    :goto_0
    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-virtual {p0, v3}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v5

    invoke-interface {p1, v1}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->trim()Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    const-wide/high16 v2, 0x7ff8

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-interface {v6, v1}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v0

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_1

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_1

    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-le v0, v7, :cond_1

    :cond_0
    move-wide v4, v2

    :goto_1
    return-wide v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 0

    return-object p0
.end method

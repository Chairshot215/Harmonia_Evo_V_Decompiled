.class public Lorg/xml/sax/SAXParseException;
.super Lorg/xml/sax/SAXException;
.source "SAXParseException.java"


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v1, v0, v0}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v1, v0, v0}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    iput-object p2, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    iput p3, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    iput p4, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    return-object v0
.end method

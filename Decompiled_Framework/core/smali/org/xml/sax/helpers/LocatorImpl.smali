.class public Lorg/xml/sax/helpers/LocatorImpl;
.super Ljava/lang/Object;
.source "LocatorImpl.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    return-void
.end method

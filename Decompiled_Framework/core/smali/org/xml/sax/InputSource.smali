.class public Lorg/xml/sax/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# instance fields
.field private byteStream:Ljava/io/InputStream;

.field private characterStream:Ljava/io/Reader;

.field private encoding:Ljava/lang/String;

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    return-void
.end method

.class public Ljavax/xml/transform/stream/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamSource/feature"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-void
.end method

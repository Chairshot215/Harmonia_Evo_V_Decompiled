.class public Ljavax/xml/transform/stream/StreamResult;
.super Ljava/lang/Object;
.source "StreamResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamResult/feature"


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private systemId:Ljava/lang/String;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    return-void
.end method

.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;
.super Ljava/lang/Object;
.source "AbstractContentHandler.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public endBodyPart()V
    .locals 0

    return-void
.end method

.method public endHeader()V
    .locals 0

    return-void
.end method

.method public endMessage()V
    .locals 0

    return-void
.end method

.method public endMultipart()V
    .locals 0

    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public startBodyPart()V
    .locals 0

    return-void
.end method

.method public startHeader()V
    .locals 0

    return-void
.end method

.method public startMessage()V
    .locals 0

    return-void
.end method

.method public startMultipart(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;)V
    .locals 0

    return-void
.end method

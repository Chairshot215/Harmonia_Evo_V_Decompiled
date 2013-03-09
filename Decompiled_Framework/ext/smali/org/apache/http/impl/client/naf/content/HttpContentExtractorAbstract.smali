.class abstract Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.super Ljava/lang/Object;
.source "HttpContentExtractorAbstract.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

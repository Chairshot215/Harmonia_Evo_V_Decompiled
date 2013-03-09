.class Lcom/htc/xps/pomelo/log/HttpSender$InflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/HttpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 293
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/HttpSender$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    return-wide v0
.end method

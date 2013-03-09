.class public interface abstract Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadStreamable"
.end annotation


# virtual methods
.method public abstract readFrom(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

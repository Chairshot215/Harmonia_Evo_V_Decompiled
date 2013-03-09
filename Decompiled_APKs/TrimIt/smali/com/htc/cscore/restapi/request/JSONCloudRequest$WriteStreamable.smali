.class public interface abstract Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WriteStreamable"
.end annotation


# virtual methods
.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

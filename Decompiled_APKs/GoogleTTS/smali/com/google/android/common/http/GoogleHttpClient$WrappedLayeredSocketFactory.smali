.class Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;
.super Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedLayeredSocketFactory"
.end annotation


# instance fields
.field private mDelegate:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter "s"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

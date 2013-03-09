.class Lcom/google/android/volley/GoogleHttpClient$WrappedLayeredSocketFactory;
.super Lcom/google/android/volley/GoogleHttpClient$WrappedSocketFactory;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/volley/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedLayeredSocketFactory"
.end annotation


# instance fields
.field private mDelegate:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

.field final synthetic this$0:Lcom/google/android/volley/GoogleHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/volley/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 1
    .parameter
    .parameter "sf"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/volley/GoogleHttpClient$WrappedLayeredSocketFactory;->this$0:Lcom/google/android/volley/GoogleHttpClient;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/volley/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/volley/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/volley/GoogleHttpClient$1;)V

    iput-object p2, p0, Lcom/google/android/volley/GoogleHttpClient$WrappedLayeredSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/volley/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lcom/google/android/volley/GoogleHttpClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/google/android/volley/GoogleHttpClient$WrappedLayeredSocketFactory;-><init>(Lcom/google/android/volley/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    return-void
.end method


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
    .line 174
    iget-object v0, p0, Lcom/google/android/volley/GoogleHttpClient$WrappedLayeredSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

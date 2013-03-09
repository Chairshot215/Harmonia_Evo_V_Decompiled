.class public Lcom/google/android/location/os/real/ProtoRequestListener;
.super Ljava/lang/Object;
.source "ProtoRequestListener.java"

# interfaces
.implements Lcom/google/masf/protocol/Request$Listener;


# instance fields
.field private protoResponse:Lcom/google/common/io/protocol/ProtoBuf;

.field private result:Lcom/google/masf/services/AsyncResult;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V
    .locals 1
    .parameter "protoResponse"
    .parameter "callback"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/masf/services/AsyncResult;

    invoke-direct {v0, p2}, Lcom/google/masf/services/AsyncResult;-><init>(Lcom/google/masf/ServiceCallback;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->result:Lcom/google/masf/services/AsyncResult;

    .line 43
    iput-object p1, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->protoResponse:Lcom/google/common/io/protocol/ProtoBuf;

    .line 44
    return-void
.end method


# virtual methods
.method public getAsyncResult()Lcom/google/masf/services/AsyncResult;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->result:Lcom/google/masf/services/AsyncResult;

    return-object v0
.end method

.method public requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .locals 5
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 49
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 50
    iget-object v2, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->protoResponse:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 51
    iget-object v2, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->result:Lcom/google/masf/services/AsyncResult;

    iget-object v3, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->protoResponse:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3}, Lcom/google/masf/services/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 59
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 53
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->result:Lcom/google/masf/services/AsyncResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/masf/services/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v1           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ProtoRequestListener"

    const-string v3, "requestCompleted()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-object v2, p0, Lcom/google/android/location/os/real/ProtoRequestListener;->result:Lcom/google/masf/services/AsyncResult;

    invoke-virtual {v2, v4}, Lcom/google/masf/services/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 63
    const-string v0, "ProtoRequestListener"

    const-string v1, "requestFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

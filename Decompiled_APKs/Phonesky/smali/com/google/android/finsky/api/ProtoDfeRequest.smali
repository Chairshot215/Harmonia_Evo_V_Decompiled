.class public Lcom/google/android/finsky/api/ProtoDfeRequest;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "ProtoDfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/google/android/finsky/api/DfeRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mRequest:Lcom/google/protobuf/micro/MessageMicro;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/micro/MessageMicro;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/finsky/api/ProtoDfeRequest;,"Lcom/google/android/finsky/api/ProtoDfeRequest<TT;>;"
    .local p4, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 24
    iput-object p2, p0, Lcom/google/android/finsky/api/ProtoDfeRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setShouldCache(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public getPostBody()[B
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/google/android/finsky/api/ProtoDfeRequest;,"Lcom/google/android/finsky/api/ProtoDfeRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/ProtoDfeRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {v0}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/finsky/api/ProtoDfeRequest;,"Lcom/google/android/finsky/api/ProtoDfeRequest<TT;>;"
    const-string v0, "application/x-protobuf"

    return-object v0
.end method

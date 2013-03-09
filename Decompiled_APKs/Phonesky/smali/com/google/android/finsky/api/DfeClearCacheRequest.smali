.class public Lcom/google/android/finsky/api/DfeClearCacheRequest;
.super Lcom/android/volley/Request;
.source "DfeClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mCacheKey:Ljava/lang/String;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mFullExpire:Z


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1
    .parameter "cache"
    .parameter "key"
    .parameter "fullExpire"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCache:Lcom/android/volley/Cache;

    .line 29
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCacheKey:Ljava/lang/String;

    .line 30
    iput-boolean p3, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mFullExpire:Z

    .line 31
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    .line 32
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 57
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCache:Lcom/android/volley/Cache;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCacheKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mFullExpire:Z

    invoke-interface {v1, v2, v3}, Lcom/android/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    .line 38
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 42
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

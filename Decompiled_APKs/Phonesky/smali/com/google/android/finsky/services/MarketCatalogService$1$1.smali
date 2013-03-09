.class Lcom/google/android/finsky/services/MarketCatalogService$1$1;
.super Ljava/lang/Object;
.source "MarketCatalogService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/MarketCatalogService$1;->isBackendEnabled(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/MarketCatalogService$1;

.field final synthetic val$backendId:I

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/MarketCatalogService$1;I[ZLjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->this$1:Lcom/google/android/finsky/services/MarketCatalogService$1;

    iput p2, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$backendId:I

    iput-object p3, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$enabled:[Z

    iput-object p4, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 41
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    iget v2, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$backendId:I

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 42
    iget-object v2, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$enabled:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 47
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 48
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method

.class Lcom/google/android/finsky/services/AppsUsageService$2$1;
.super Ljava/lang/Object;
.source "AppsUsageService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/AppsUsageService$2;->getDocuments(II)Ljava/util/List;
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
        "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/AppsUsageService$2;

.field final synthetic val$bulkDetailsList:Ljava/util/List;

.field final synthetic val$networkSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/List;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$2$1;->this$1:Lcom/google/android/finsky/services/AppsUsageService$2;

    iput-object p2, p0, Lcom/google/android/finsky/services/AppsUsageService$2$1;->val$bulkDetailsList:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/services/AppsUsageService$2$1;->val$networkSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/services/AppsUsageService$2$1;->val$bulkDetailsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/services/AppsUsageService$2$1;->val$networkSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 73
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/AppsUsageService$2$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V

    return-void
.end method

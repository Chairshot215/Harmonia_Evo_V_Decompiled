.class Lcom/google/android/finsky/services/AppsUsageService$2$2;
.super Ljava/lang/Object;
.source "AppsUsageService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/AppsUsageService$2;->getDocuments(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/AppsUsageService$2;

.field final synthetic val$networkSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$2$2;->this$1:Lcom/google/android/finsky/services/AppsUsageService$2;

    iput-object p2, p0, Lcom/google/android/finsky/services/AppsUsageService$2$2;->val$networkSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/services/AppsUsageService$2$2;->val$networkSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    return-void
.end method

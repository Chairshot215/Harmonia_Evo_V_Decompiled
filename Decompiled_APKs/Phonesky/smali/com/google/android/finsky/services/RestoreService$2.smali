.class Lcom/google/android/finsky/services/RestoreService$2;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/RestoreService;->doRestore(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService;->access$600(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishAccount(Ljava/lang/String;)V

    .line 419
    const-string v0, "Error while getting list of applications to restore from server: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    return-void
.end method

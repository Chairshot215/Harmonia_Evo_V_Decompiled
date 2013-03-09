.class Lcom/google/android/gm/BulkOperationHelper$6;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$operation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$operation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 537
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 540
    .local v0, emptyServiceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 542
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 545
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    #getter for: Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->access$200(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    move-result-object v2

    monitor-enter v2

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    sget-object v3, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->FINISHED:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    #setter for: Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    invoke-static {v1, v3}, Lcom/google/android/gm/BulkOperationHelper;->access$202(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/BulkOperationHelper$ThreadState;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 547
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    #getter for: Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z
    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->access$300(Lcom/google/android/gm/BulkOperationHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    #getter for: Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;
    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    new-instance v3, Lcom/google/android/gm/BulkOperationHelper$6$1;

    invoke-direct {v3, p0}, Lcom/google/android/gm/BulkOperationHelper$6$1;-><init>(Lcom/google/android/gm/BulkOperationHelper$6;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 554
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 558
    return-void

    .line 554
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

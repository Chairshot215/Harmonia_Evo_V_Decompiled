.class Lcom/google/android/gm/BulkOperationHelper$7;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->runInBackground(Landroid/content/Context;Ljava/lang/Runnable;)V
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
    .line 578
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$7;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$operation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 583
    .local v0, emptyServiceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 585
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 588
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 589
    return-void
.end method

.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;
.super Ljava/lang/Thread;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->runInNonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 357
    :try_start_0
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    const/4 v2, 0x0

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsDBDone(I)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V

    .line 360
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->saveMediaStoreToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    const/4 v2, 0x1

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsDBAvailable(Z)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    .line 362
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    const/4 v2, 0x1

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsDBDone(I)V
    invoke-static {v0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V

    .line 364
    :cond_0
    monitor-exit v1

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

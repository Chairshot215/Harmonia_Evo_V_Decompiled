.class Lcom/htc/providers/uploads/UploadNotification$1;
.super Ljava/lang/Thread;
.source "UploadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/UploadNotification;->cancelAfterDelay(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadNotification;

.field final synthetic val$bid:I


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/UploadNotification;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadNotification$1;->this$0:Lcom/htc/providers/uploads/UploadNotification;

    iput p2, p0, Lcom/htc/providers/uploads/UploadNotification$1;->val$bid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 636
    :try_start_0
    const-string v1, "UploadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel because of success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/providers/uploads/UploadNotification$1;->val$bid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-wide/16 v1, 0x1770

    invoke-static {v1, v2}, Lcom/htc/providers/uploads/UploadNotification$1;->sleep(J)V

    .line 638
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification$1;->this$0:Lcom/htc/providers/uploads/UploadNotification;

    iget-object v1, v1, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/providers/uploads/UploadNotification$1;->val$bid:I

    invoke-static {v1, v2}, Lcom/htc/providers/uploads/UploadHelper;->clearBatchUpload(Landroid/content/Context;I)V

    .line 639
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification$1;->this$0:Lcom/htc/providers/uploads/UploadNotification;

    iget-object v1, v1, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/htc/providers/uploads/UploadNotification$1;->val$bid:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

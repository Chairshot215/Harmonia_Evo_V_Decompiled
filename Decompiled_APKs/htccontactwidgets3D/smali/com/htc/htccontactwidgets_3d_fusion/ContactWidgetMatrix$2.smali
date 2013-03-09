.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->initPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 798
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v1, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z
    invoke-static {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 813
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z
    invoke-static {v0, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 805
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v2, 0x0

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v0, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 808
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 811
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

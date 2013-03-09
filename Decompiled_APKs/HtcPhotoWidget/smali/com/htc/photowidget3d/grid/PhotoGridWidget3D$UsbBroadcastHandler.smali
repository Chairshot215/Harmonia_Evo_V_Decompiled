.class Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoGridWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbBroadcastHandler"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 822
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 823
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 827
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 829
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 850
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #getter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isDestroy:Z
    invoke-static {v2}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$300(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    const-string v2, "UsbHandler onReceive Widget is destroy"

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    if-eqz p2, :cond_0

    .line 861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, strAction:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbHandler onReceive Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 863
    if-eqz v0, :cond_0

    .line 868
    const-string v2, "com.htc.showme.LOG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    const-string v2, "actionCoverage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, strExtra:Ljava/lang/String;
    const-string v2, "topic_tag-connections_computer-copy_files"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    const-string v2, ">> UsbHandler onReceive ACTION_USB_DISK"

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 874
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    const/4 v3, 0x1

    #setter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$402(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z

    .line 875
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->onMediaUnmounted()V

    .line 876
    const-string v2, "<< UsbHandler onReceive ACTION_USB_DISK"

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->stop()V

    .line 834
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #calls: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$100(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 836
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #calls: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$200(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 844
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 845
    return-void
.end method

.class Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoGridWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHandler"
.end annotation


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 885
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mRegistered:Z

    .line 889
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 894
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 895
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 916
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastHandler onReceive Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #getter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isDestroy:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$300(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    const-string v1, "BroadcastHandler onReceive Widget is destroy"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #setter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1, v3}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$702(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z

    .line 928
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->onMediaUnmounted()V

    goto :goto_0

    .line 930
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 932
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #setter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1, v3}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$702(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z

    .line 933
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->onMediaMounted()V

    goto :goto_0

    .line 935
    :cond_4
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    const/4 v2, 0x1

    #setter for: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1, v2}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$702(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z

    .line 938
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->onMediaMounted()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->stop()V

    .line 900
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #calls: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$500(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mRegistered:Z

    .line 902
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #calls: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$600(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 910
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->mRegistered:Z

    .line 911
    return-void
.end method

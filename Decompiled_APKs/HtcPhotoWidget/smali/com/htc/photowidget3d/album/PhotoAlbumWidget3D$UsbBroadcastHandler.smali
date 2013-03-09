.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoAlbumWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbBroadcastHandler"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1025
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 1026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1030
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1032
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1053
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbHandler onReceive Widget is destroy"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    if-eqz p2, :cond_0

    .line 1064
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, strAction:Ljava/lang/String;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbHandler onReceive Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    if-eqz v0, :cond_0

    .line 1071
    const-string v2, "com.htc.showme.LOG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    const-string v2, "actionCoverage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, strExtra:Ljava/lang/String;
    const-string v2, "topic_tag-connections_computer-copy_files"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, ">> UsbHandler onReceive ACTION_USB_DISK"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2300(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1b66

    invoke-virtual {v2, v3, v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 1080
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    const/4 v3, 0x1

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1082
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<< UsbHandler onReceive ACTION_USB_DISK"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->stop()V

    .line 1037
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2100(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 1039
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2200(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->mRegistered:Z

    .line 1048
    return-void
.end method

.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoAlbumWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHandler"
.end annotation


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1090
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1091
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mRegistered:Z

    .line 1095
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1101
    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1131
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastHandler onReceive Widget is destroy"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastHandler][onReceive] Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1143
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v1, v5}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1144
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BroadcastHandler][onReceive] MSG_SDCARD_SHARED"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v3, 0x1b66

    invoke-virtual {v1, v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0

    .line 1148
    :cond_2
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1150
    :cond_3
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BroadcastHandler][onReceive] MSG_MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1153
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v3, 0x1b64

    invoke-virtual {v1, v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 1155
    :cond_4
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v1, v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    goto :goto_0

    .line 1157
    :cond_5
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1159
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BroadcastHandler][onReceive] MSG_LOAD_DATA"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1, v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1602(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1161
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v1, v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1162
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v3, 0x1b63

    invoke-virtual {v1, v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto/16 :goto_0

    .line 1164
    :cond_6
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BroadcastHandler][onReceive] MSG_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1, v5}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1602(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1168
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v1, v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z

    .line 1169
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v3, 0x1b65

    invoke-virtual {v1, v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto/16 :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->stop()V

    .line 1108
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2400(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mRegistered:Z

    .line 1110
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2500(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->mRegistered:Z

    .line 1119
    return-void
.end method

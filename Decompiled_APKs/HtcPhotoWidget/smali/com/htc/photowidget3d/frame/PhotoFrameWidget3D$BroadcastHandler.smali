.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHandler"
.end annotation


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 719
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mRegistered:Z

    .line 724
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 729
    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 730
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastHandler onReceive Widget is destroy"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

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

    .line 768
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$1;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 777
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 779
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$2;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$2;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 787
    :cond_4
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2500(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$3;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$3;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->stop()V

    .line 736
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mRegistered:Z

    .line 738
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 746
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->mRegistered:Z

    .line 747
    return-void
.end method

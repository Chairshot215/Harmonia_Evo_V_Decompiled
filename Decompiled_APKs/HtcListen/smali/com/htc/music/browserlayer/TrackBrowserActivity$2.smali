.class Lcom/htc/music/browserlayer/TrackBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideHtcContextMenu()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_1
.end method

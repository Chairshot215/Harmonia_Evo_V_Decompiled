.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showSpinner(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->removeDialog(I)V

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_0
.end method

.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    goto :goto_0
.end method

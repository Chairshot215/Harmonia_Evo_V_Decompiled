.class Lcom/htc/music/browserlayer/TrackBrowserActivity$29;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[PluginNowPlayingListActivity]"

    const-string v1, "mRefreshListRunnable()...mPluginAdapter is null...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

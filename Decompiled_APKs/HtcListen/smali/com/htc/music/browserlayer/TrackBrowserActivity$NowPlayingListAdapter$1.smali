.class Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;->this$1:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "[TrackBrowser]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click plugin button, position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;->this$1:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->access$5800(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v2

    const-wide/16 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)V
    invoke-static {v2, v1, v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)V

    return-void
.end method

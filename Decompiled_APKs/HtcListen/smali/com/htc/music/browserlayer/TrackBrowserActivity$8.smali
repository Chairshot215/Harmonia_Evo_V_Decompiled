.class Lcom/htc/music/browserlayer/TrackBrowserActivity$8;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DragListener;


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

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getAutoRequery()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    return-void
.end method

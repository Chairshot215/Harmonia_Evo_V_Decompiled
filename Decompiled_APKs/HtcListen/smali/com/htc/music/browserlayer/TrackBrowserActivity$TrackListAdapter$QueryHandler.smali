.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v0, 0x1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    :cond_0
    return-void
.end method

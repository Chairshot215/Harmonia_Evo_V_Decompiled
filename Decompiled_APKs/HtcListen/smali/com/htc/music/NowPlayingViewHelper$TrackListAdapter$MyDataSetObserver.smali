.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method

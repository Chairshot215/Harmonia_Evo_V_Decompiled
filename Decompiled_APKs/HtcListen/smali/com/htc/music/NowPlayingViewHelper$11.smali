.class Lcom/htc/music/NowPlayingViewHelper$11;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "Got META_CHANGED, List View is null!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1800(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$1802(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/NowPlayingViewHelper;->access$1900(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "can\'t find any row in now playing list!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    :cond_4
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$11;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

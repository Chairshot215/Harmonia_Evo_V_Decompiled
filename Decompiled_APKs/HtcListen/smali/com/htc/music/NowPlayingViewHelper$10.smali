.class Lcom/htc/music/NowPlayingViewHelper$10;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$1600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$10;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

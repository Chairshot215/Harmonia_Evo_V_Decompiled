.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "audioid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "position"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "[NowPlayingViewHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click button, audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;->this$0:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;
    invoke-static {v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v3

    int-to-long v4, v0

    #calls: Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V
    invoke-static {v3, v2, v4, v5}, Lcom/htc/music/NowPlayingViewHelper;->access$4400(Lcom/htc/music/NowPlayingViewHelper;IJ)V

    return-void
.end method

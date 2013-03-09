.class Lcom/htc/music/browserlayer/TrackBrowserActivity$18;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/htc/music/NpCategory;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)S

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    return-void
.end method

.class Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/content/ContentResolver;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v0, 0x1

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "audio_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSong(I)V
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    :cond_1
    return-void
.end method

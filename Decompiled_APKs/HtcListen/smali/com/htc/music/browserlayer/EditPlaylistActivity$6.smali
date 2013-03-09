.class Lcom/htc/music/browserlayer/EditPlaylistActivity$6;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4

    invoke-static {}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1202(Lcom/htc/music/browserlayer/EditPlaylistActivity;Z)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    goto :goto_0
.end method

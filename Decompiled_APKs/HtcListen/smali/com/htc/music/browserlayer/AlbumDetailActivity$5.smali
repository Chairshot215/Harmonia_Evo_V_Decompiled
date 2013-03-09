.class Lcom/htc/music/browserlayer/AlbumDetailActivity$5;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    return-void
.end method

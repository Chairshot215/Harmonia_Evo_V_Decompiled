.class Lcom/htc/music/browserlayer/AlbumDetailActivity$2;
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

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "audioid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->deleteTrack(I)V

    return-void
.end method

.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

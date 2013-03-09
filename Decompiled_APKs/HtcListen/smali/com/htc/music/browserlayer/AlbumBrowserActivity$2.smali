.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;
.super Landroid/os/Handler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;
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

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

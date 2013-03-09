.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    const/4 v0, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object p3, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p3, v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    iput-boolean v5, v3, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_0

    move-object p3, v1

    goto :goto_0
.end method

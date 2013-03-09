.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query complete: cols count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cursor columns not match. Return from onQueryComplete"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete unknown= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    if-eqz v2, :cond_3

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object p3, v4, v7

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v1, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p3, v1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete cursor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->init(Landroid/database/Cursor;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    iput-boolean v7, v4, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_2

    move-object p3, v2

    goto :goto_1
.end method

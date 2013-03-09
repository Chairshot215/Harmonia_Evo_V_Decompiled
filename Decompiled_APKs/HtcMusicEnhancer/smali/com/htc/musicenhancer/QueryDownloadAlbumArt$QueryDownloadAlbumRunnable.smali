.class Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;
.super Ljava/lang/Object;
.source "QueryDownloadAlbumArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/QueryDownloadAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryDownloadAlbumRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    const/4 v2, 0x0

    #setter for: Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->mFailCount:I
    invoke-static {v1, v2}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->access$002(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;I)I

    .line 320
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    const/4 v2, 0x0

    #calls: Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->doQueryDownloadAlbumArt(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->access$100(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 321
    .local v0, albumCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    #calls: Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->extractAlbumInfoFromCursor(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->access$200(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;Landroid/database/Cursor;)V

    .line 323
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    #calls: Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->doQueryDownloadAlbumArtTrack()V
    invoke-static {v1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->access$300(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt$QueryDownloadAlbumRunnable;->this$0:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    #calls: Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->completeQuery()V
    invoke-static {v1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->access$400(Lcom/htc/musicenhancer/QueryDownloadAlbumArt;)V

    .line 327
    return-void
.end method

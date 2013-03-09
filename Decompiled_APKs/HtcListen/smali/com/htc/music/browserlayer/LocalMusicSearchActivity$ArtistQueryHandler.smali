.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ ArtistQueryHandler, onQueryComplete(), token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iput-boolean v4, v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V
    invoke-static {v1, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Z)V

    goto :goto_0
.end method

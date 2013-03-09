.class final Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
.super Landroid/os/Handler;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "position"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** case GET_ALBUM_ART:... pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", list length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", albumArtPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v4, "albumartpath"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

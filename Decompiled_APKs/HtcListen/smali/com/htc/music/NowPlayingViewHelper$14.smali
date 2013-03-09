.class Lcom/htc/music/NowPlayingViewHelper$14;
.super Landroid/os/Handler;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J
    invoke-static {v8}, Lcom/htc/music/NowPlayingViewHelper;->access$3100(Lcom/htc/music/NowPlayingViewHelper;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x122

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput-object v6, v7, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-boolean v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/NowPlayingViewHelper;->access$3200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v6, v7}, Lcom/htc/music/NowPlayingViewHelper;->access$1700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    instance-of v6, v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v6, v2}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v6, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$3300(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v6, v0}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z
    invoke-static {v6, v7}, Lcom/htc/music/NowPlayingViewHelper;->access$3402(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_5

    const-string v6, "title"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v7, v7, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "mDelaySearchHandler()...listItem is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v6, "[NowPlayingViewHelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after filter, count =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFilterPosToOldPosTable size => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$14;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

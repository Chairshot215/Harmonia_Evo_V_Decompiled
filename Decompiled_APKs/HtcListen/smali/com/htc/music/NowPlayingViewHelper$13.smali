.class Lcom/htc/music/NowPlayingViewHelper$13;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v13, "[NowPlayingViewHelper]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mPluginListener...action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "com.htc.music.artpathupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "position"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v13, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "[NowPlayingViewHelper]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ OS_ART_PATH_UPDATED... pos = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", list length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", albumArtPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-ltz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v13, "albumartpath"

    invoke-virtual {v7, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v13, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    const-string v13, "start"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "end"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v13, "[NowPlayingViewHelper]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ mPluginListener... start = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", end = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mIsQueueChanged = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z
    invoke-static {v15}, Lcom/htc/music/NowPlayingViewHelper;->access$2400(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2400(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v6, 0x0

    :goto_1
    sub-int v13, v5, v11

    add-int/lit8 v13, v13, 0x1

    if-ge v6, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v14

    aget-object v13, v12, v6

    check-cast v13, Landroid/content/ContentValues;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v9

    add-int/lit8 v13, v9, -0x1

    if-ne v5, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v13}, Lcom/htc/music/NowPlayingViewHelper;->initListPos()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const/4 v6, 0x0

    :goto_2
    sub-int v13, v5, v11

    add-int/lit8 v13, v13, 0x1

    if-ge v6, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v14

    aget-object v13, v12, v6

    check-cast v13, Landroid/content/ContentValues;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :try_start_2
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v9

    add-int/lit8 v13, v9, -0x1

    if-ne v5, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_8
    const-string v13, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "position"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$1000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v13

    if-ne v10, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const-string v13, "values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v14, v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2602(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/content/ContentValues;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "album"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->access$1202(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2700(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2702(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const-string v14, "com.htc.music.newproperty"

    #calls: Lcom/htc/music/NowPlayingViewHelper;->notifyProperty(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2800(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2602(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    goto/16 :goto_0

    :cond_b
    const-string v13, "com.htc.music.queuechanged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "@@ QUEUE_CHANGED... "

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x1

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2402(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :try_start_4
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V

    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v14, 0x12c

    invoke-interface {v13, v14}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_c
    const-string v13, "com.htc.music.metachanged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v3, -0x1

    :try_start_5
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2900(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13, v3}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v3

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v13

    if-eq v13, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I
    invoke-static {v13, v3}, Lcom/htc/music/NowPlayingViewHelper;->access$3002(Lcom/htc/music/NowPlayingViewHelper;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$13;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

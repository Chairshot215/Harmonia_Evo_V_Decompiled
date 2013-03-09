.class final Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
.super Landroid/os/Handler;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<< NonUIHandler >>, msg.what = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->prev()V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->next(Z)V

    goto :goto_0

    :pswitch_2
    const-string v22, "uriPath"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v22, "shuffle"

    const-string v23, "shuffle"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "position"

    const-string v23, "position"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "server"

    const-string v23, "server"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "content"

    const-string v23, "content"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v20, 0x0

    const/4 v6, 0x0

    if-eqz v7, :cond_2

    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v22, "position"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v22, "server"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v22, "content"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    if-eqz v20, :cond_9

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v22

    if-eqz v22, :cond_9

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<> path => "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v18, 0x0

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<< Don\'t query again...>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v18, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x1

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", albumArtFilePath: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", albumArtFilePath: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v22, "adn_server"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v22, "adn_content"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v22, "adn_filepath"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_c

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, this arraylist should not be empty at this moment."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_d

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v22, "position"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v22, "content"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v22, "server"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    if-eqz v8, :cond_e

    if-ltz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_e

    if-eqz v11, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_f

    :cond_e
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, CV is incorrect."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    if-nez v15, :cond_10

    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v15}, Lcom/htc/music/DMPMusicPlaybackService;->access$1200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->access$1300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->access$1400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1500(Lcom/htc/music/DMPMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_11

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    const-string v23, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    const-string v23, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_2
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v14

    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :cond_12
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handle Album Art...fail to save file to SD card...filePath = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_13
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    goto/16 :goto_0

    :pswitch_6
    const-string v22, "interval"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->getNowplayingQueue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->next(Z)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    :cond_15
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

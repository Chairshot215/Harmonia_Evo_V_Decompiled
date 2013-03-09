.class Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;
.super Ljava/lang/Object;
.source "RemotePlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenPlaylistRunnable"
.end annotation


# instance fields
.field private bStop:Z

.field private containerID:Ljava/lang/String;

.field private nDirection:I

.field private nEndIndex:J

.field private nStartIndex:J

.field private selectedContentID:Ljava/lang/String;

.field private serverID:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .parameter
    .parameter "aServerID"
    .parameter "aContainerID"
    .parameter "aStartIndex"
    .parameter "aEndIndex"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->bStop:Z

    .line 877
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    .line 878
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->selectedContentID:Ljava/lang/String;

    .line 880
    iput-wide p4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    .line 881
    iput-wide p6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    .line 882
    cmp-long v0, p4, p6

    if-gez v0, :cond_0

    sget v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_DOWN:I

    :goto_0
    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nDirection:I

    .line 883
    return-void

    .line 882
    :cond_0
    sget v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_UP:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1
    .parameter
    .parameter "aServerID"
    .parameter "aContainerID"
    .parameter "aContentID"
    .parameter "aStartIndex"
    .parameter "aEndIndex"
    .parameter "aDirection"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->bStop:Z

    .line 865
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    .line 866
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    .line 867
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->selectedContentID:Ljava/lang/String;

    .line 868
    iput-wide p5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    .line 869
    iput-wide p7, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    .line 870
    iput p9, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nDirection:I

    .line 872
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->bStop:Z

    .line 1052
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 887
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GenPlaylistRunnable: serverID :"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "containerID:"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-nez v2, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 895
    .local v9, aContext:Landroid/content/Context;
    if-eqz v9, :cond_0

    .line 898
    const/4 v13, 0x0

    .line 899
    .local v13, cur:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 900
    .local v12, count:I
    const/4 v8, 0x0

    .line 902
    .local v8, _id:I
    const/4 v10, 0x0

    .line 903
    .local v10, aList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "content_id"

    aput-object v3, v4, v2

    .line 905
    .local v4, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 906
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 907
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v7, "index_id ASC"

    .line 908
    .local v7, sortOrder:Ljava/lang/String;
    const/4 v11, 0x0

    .line 910
    .local v11, bHandleBrowseNotify:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nDirection:I

    sget v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_UP:I

    if-ne v2, v3, :cond_8

    .line 912
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    const-wide/16 v16, -0x1

    cmp-long v2, v2, v16

    if-nez v2, :cond_7

    .line 914
    const-string v5, "serve_id=? and container=? and file_type&? and index_id>=? and index_id<=?"

    .line 915
    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v6, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 937
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->selectedContentID:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->selectedContentID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 947
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    if-nez v2, :cond_3

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    .line 952
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v10, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    .line 954
    const/4 v11, 0x1

    .line 974
    :goto_2
    if-eqz v13, :cond_f

    .line 976
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 978
    .local v15, nResultCount:I
    const/16 v2, 0xc7

    if-le v15, v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nDirection:I

    sget v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_UP:I

    if-ne v2, v3, :cond_d

    .line 980
    add-int/lit16 v2, v15, -0xc7

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 985
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->bStop:Z

    if-nez v2, :cond_5

    .line 987
    new-instance v14, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V

    .line 989
    .local v14, item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
    if-eqz v14, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-eqz v2, :cond_e

    .line 991
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 992
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    .line 994
    invoke-virtual {v10, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 996
    if-nez v11, :cond_4

    iget-object v2, v14, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->selectedContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v2, v12}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setListCurIndex(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->update(IJ)V

    .line 1002
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 1004
    const/16 v2, 0xc7

    if-lt v12, v2, :cond_e

    .line 1015
    .end local v14           #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
    .end local v15           #nResultCount:I
    :cond_5
    :goto_4
    if-eqz v13, :cond_6

    .line 1017
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1018
    const/4 v13, 0x0

    .line 1021
    :cond_6
    if-eqz v11, :cond_10

    .line 1023
    if-eqz v12, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v2

    if-eq v2, v12, :cond_0

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    sget v3, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_UPDATE_NOTIFY:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto/16 :goto_0

    .line 919
    :cond_7
    const-string v5, "serve_id=? and container=? and file_type&? and index_id>=? and index_id<=?"

    .line 920
    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 925
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    const-wide/16 v16, -0x1

    cmp-long v2, v2, v16

    if-nez v2, :cond_9

    .line 927
    const-string v5, "serve_id=? and container=? and file_type&? and index_id>=?"

    .line 928
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 932
    :cond_9
    const-string v5, "serve_id=? and container=? and file_type&? and index_id>=? and index_id<=?"

    .line 933
    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->serverID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->containerID:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nStartIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->nEndIndex:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 959
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 964
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    if-nez v2, :cond_c

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    .line 969
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-object v10, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    .line 971
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 983
    .restart local v15       #nResultCount:I
    :cond_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_3

    .line 1007
    .restart local v14       #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
    :cond_e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 1012
    .end local v14           #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
    .end local v15           #nResultCount:I
    :cond_f
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "No playlist items"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1034
    :cond_10
    if-eqz v12, :cond_11

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v2, v12}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setTotalCount(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setListNextIndex(I)V

    .line 1038
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemotePlaylist is created. Count="

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    sget v3, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_GENERATE_SUCCESS:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    iget-boolean v2, v2, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genShuffle()V

    goto/16 :goto_0

    .line 1044
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->this$0:Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    const/16 v3, -0x137

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto/16 :goto_0
.end method

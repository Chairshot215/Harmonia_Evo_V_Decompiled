.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorParser"
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;"
        }
    .end annotation
.end field

.field private final localIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final localVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 972
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    .line 973
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    .line 974
    return-void
.end method

.method private emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    const-string p1, ""

    .line 1020
    .end local p1
    :cond_0
    return-object p1
.end method

.method private parse()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_FOLDER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_1

    const/4 v13, 0x1

    .line 1027
    .local v13, isFolder:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_TITLE:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1028
    .local v23, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_URL:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1029
    .local v24, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_FAVICON:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1030
    .local v10, favicon:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1031
    .local v14, localId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v16, 0x0

    .line 1035
    .local v16, localParentId:Ljava/lang/Long;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v15, 0x0

    .line 1039
    .local v15, localInsertAfter:Ljava/lang/Long;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v17, 0x0

    .line 1043
    .local v17, localVersion:Ljava/lang/Long;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_DELETED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_5

    const/4 v12, 0x1

    .line 1045
    .local v12, isDeleted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1047
    .local v18, remoteId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1049
    .local v19, remoteParentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_6

    const/16 v20, 0x0

    .line 1053
    .local v20, remoteVersion:Ljava/lang/Long;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_SERVER_UNIQUE_TAG:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1055
    .local v21, serverUniqueTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_CLIENT_UNIQUE_TAG:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, clientUniqueTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/4 v7, 0x0

    .line 1061
    .local v7, dateCreated:Ljava/lang/Long;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_8

    const/4 v8, 0x0

    .line 1066
    .local v8, dateModified:Ljava/lang/Long;
    :goto_7
    if-eqz v21, :cond_9

    .line 1067
    const-string v25, "BookmarksSync"

    const-string v26, "The client is trying to modify a root folder.  Ignoring, but this should not happen."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v11, 0x0

    .line 1238
    :cond_0
    :goto_8
    return-object v11

    .line 1025
    .end local v4           #clientUniqueTag:Ljava/lang/String;
    .end local v7           #dateCreated:Ljava/lang/Long;
    .end local v8           #dateModified:Ljava/lang/Long;
    .end local v10           #favicon:[B
    .end local v12           #isDeleted:Z
    .end local v13           #isFolder:Z
    .end local v14           #localId:Ljava/lang/String;
    .end local v15           #localInsertAfter:Ljava/lang/Long;
    .end local v16           #localParentId:Ljava/lang/Long;
    .end local v17           #localVersion:Ljava/lang/Long;
    .end local v18           #remoteId:Ljava/lang/String;
    .end local v19           #remoteParentId:Ljava/lang/String;
    .end local v20           #remoteVersion:Ljava/lang/Long;
    .end local v21           #serverUniqueTag:Ljava/lang/String;
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #url:Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1031
    .restart local v10       #favicon:[B
    .restart local v13       #isFolder:Z
    .restart local v14       #localId:Ljava/lang/String;
    .restart local v23       #title:Ljava/lang/String;
    .restart local v24       #url:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto/16 :goto_1

    .line 1035
    .restart local v16       #localParentId:Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_2

    .line 1039
    .restart local v15       #localInsertAfter:Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_3

    .line 1043
    .restart local v17       #localVersion:Ljava/lang/Long;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1049
    .restart local v12       #isDeleted:Z
    .restart local v18       #remoteId:Ljava/lang/String;
    .restart local v19       #remoteParentId:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    goto/16 :goto_5

    .line 1057
    .restart local v4       #clientUniqueTag:Ljava/lang/String;
    .restart local v20       #remoteVersion:Ljava/lang/Long;
    .restart local v21       #serverUniqueTag:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_6

    .line 1061
    .restart local v7       #dateCreated:Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_7

    .line 1072
    .restart local v8       #dateModified:Ljava/lang/Long;
    :cond_9
    if-eqz v12, :cond_f

    .line 1074
    if-nez v18, :cond_a

    .line 1076
    const/4 v11, 0x0

    goto :goto_8

    .line 1078
    :cond_a
    const/4 v9, 0x0

    .line 1079
    .local v9, deleteBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    if-eqz v13, :cond_c

    .line 1080
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v9

    .line 1084
    :goto_9
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 1085
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding DELETE of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_b
    if-nez v7, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_a
    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v27

    if-nez v8, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_b
    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v26

    sget-object v27, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v26

    check-cast v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual/range {v26 .. v26}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v11

    goto/16 :goto_8

    .line 1082
    :cond_c
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v9

    goto/16 :goto_9

    .line 1087
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto :goto_a

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto :goto_b

    .line 1104
    .end local v9           #deleteBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    :cond_f
    const/4 v5, 0x0

    .line 1105
    .local v5, correctedRemoteInsertAfter:Ljava/lang/String;
    if-eqz v15, :cond_11

    .line 1106
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->access$600()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-nez v25, :cond_12

    .line 1107
    const-string v5, ""

    .line 1113
    :goto_c
    if-nez v5, :cond_11

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 1116
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1117
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but it is being inserted after a record "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with no remote id.  However, the"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " preceding record is in the changelist, so it\'s fine."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_10
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1137
    :cond_11
    :goto_d
    if-nez v16, :cond_14

    .line 1138
    const-string v25, "BookmarksSync"

    const-string v26, "Trying to insert or modify a record without a parent.  Skipping."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v25, v0

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;
    invoke-static/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1141
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1109
    :cond_12
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v27, v0

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;
    invoke-static/range {v27 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;

    move-result-object v27

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    invoke-static/range {v25 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c

    .line 1124
    :cond_13
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 1125
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but it is being inserted after a record "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " that has no remote id.  Setting"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " insert-after to null, which may change ordering."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1146
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v27, v0

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;
    invoke-static/range {v27 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;

    move-result-object v27

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    invoke-static/range {v25 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, correctedRemoteParentId:Ljava/lang/String;
    if-nez v6, :cond_16

    .line 1149
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1150
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but its parent "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " has no remote id.  Skipping."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v25, v0

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;
    invoke-static/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1155
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1158
    :cond_16
    const/4 v11, 0x0

    .line 1160
    .local v11, insertOrModifyBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<*>;"
    if-nez v18, :cond_1e

    .line 1162
    const/4 v3, 0x0

    .line 1163
    .local v3, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    if-eqz v13, :cond_1b

    .line 1164
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v3

    .line 1168
    :goto_e
    if-eqz v4, :cond_17

    .line 1169
    invoke-virtual {v3, v4}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    .line 1171
    :cond_17
    if-eqz v5, :cond_18

    .line 1172
    invoke-virtual {v3, v5}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    .line 1174
    :cond_18
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v22

    .line 1176
    .local v22, specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    if-eqz v10, :cond_19

    .line 1177
    invoke-static {v10}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1179
    :cond_19
    if-eqz v24, :cond_1a

    .line 1180
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1182
    :cond_1a
    if-nez v7, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_f
    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setLocalId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v27

    if-nez v8, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_10
    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v26

    sget-object v27, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual/range {v22 .. v22}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v26

    check-cast v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual/range {v26 .. v26}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    .line 1193
    move-object v11, v3

    .line 1194
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1195
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding INSERT of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1166
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_1b
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v3

    goto/16 :goto_e

    .line 1182
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto/16 :goto_f

    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto :goto_10

    .line 1199
    .end local v3           #builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_1e
    const/4 v3, 0x0

    .line 1200
    .local v3, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    if-eqz v13, :cond_23

    .line 1201
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v3

    .line 1205
    :goto_11
    if-eqz v4, :cond_1f

    .line 1206
    invoke-virtual {v3, v4}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1208
    :cond_1f
    if-eqz v5, :cond_20

    .line 1209
    invoke-virtual {v3, v5}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1211
    :cond_20
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v22

    .line 1213
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    if-eqz v10, :cond_21

    .line 1214
    invoke-static {v10}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1216
    :cond_21
    if-eqz v24, :cond_22

    .line 1217
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1219
    :cond_22
    if-nez v7, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_12
    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v27

    if-nez v8, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_13
    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v26

    sget-object v27, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual/range {v22 .. v22}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v26

    check-cast v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual/range {v26 .. v26}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v25

    check-cast v25, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1232
    move-object v11, v3

    .line 1233
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1234
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding MODIFY of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1203
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_23
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v3

    goto/16 :goto_11

    .line 1219
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_24
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto/16 :goto_12

    :cond_25
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto/16 :goto_13
.end method

.method private parseAndValidate()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<*>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parse()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 994
    if-nez v0, :cond_2

    .line 1013
    :cond_0
    :goto_0
    return-object v2

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "BookmarksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local bookmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be parsed.  Skipping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 989
    const-string v3, "BookmarksSync"

    const-string v4, "Details:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    :cond_1
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v3

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v4, v8

    iput-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    goto :goto_0

    .line 998
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->validate()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1009
    invoke-virtual {v0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    move-result-object v2

    .line 1010
    .local v2, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    const-string v3, "BookmarksSync"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    .end local v2           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :catch_1
    move-exception v1

    .line 1000
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "BookmarksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local bookmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing one or more required fields, and cannot be synced to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the server.  Skipping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1004
    const-string v3, "BookmarksSync"

    const-string v4, "Details:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :cond_3
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v3

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v4, v8

    iput-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    goto/16 :goto_0
.end method


# virtual methods
.method public getLocalIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseNextNItems(I)V
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1247
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1248
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1249
    const/4 v0, 0x0

    .line 1250
    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_1

    .line 1251
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parseAndValidate()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    move-result-object v1

    .line 1252
    .local v1, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    if-eqz v1, :cond_0

    .line 1253
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_0
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1260
    .end local v1           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :cond_1
    return-void
.end method

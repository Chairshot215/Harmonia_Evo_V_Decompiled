.class public Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "DlArtAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/DlArtAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/DlArtAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 14

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\' AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "album"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " != \'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<unknown>\' "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private mergeDlAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :cond_2
    if-gez v9, :cond_3

    const-string v0, "[DlArtAsyncQuery]"

    const-string v1, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dl_album_id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$000(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-gez v8, :cond_7

    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :try_start_1
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$100(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$200()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$100(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "[DlArtAsyncQuery]"

    const-string v1, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$000(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "[DlArtAsyncQuery]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeDlAlbumArt: dlCursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v6, v1}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$100(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object p1, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$100(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$300(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;

    iget v11, p1, Landroid/os/Message;->what:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_0

    :goto_1
    iget-object v1, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    const-string v1, "[DlArtAsyncQuery]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkerHandler.handleMsg: msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reply.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v1, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-virtual {v1, v7, v6}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->setDebugTrace(Landroid/database/Cursor;Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;)V

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mJoinAlbumArt:Z
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$400(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v7, v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v7

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/music/util/DlArtAsyncQueryHandler;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$500(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v7, v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;->mergeDlAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_2
    :goto_2
    iput-object v7, v6, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v1, "[DlArtAsyncQuery]"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_2

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

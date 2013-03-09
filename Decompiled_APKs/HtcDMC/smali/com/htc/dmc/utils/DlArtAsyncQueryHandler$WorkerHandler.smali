.class public Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "DlArtAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"
    .parameter "resolver"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 155
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 162
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 165
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 166
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 172
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 173
    const/4 p1, 0x0

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 182
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 183
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 189
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/dmc/utils/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/dmc/utils/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    .local v7, albumArtCrsor:Lcom/htc/dmc/utils/ArrayListCursor;
    new-instance v0, Lcom/htc/dmc/utils/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/dmc/utils/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private mergeDlAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 11
    .parameter "cursor"
    .parameter "cr"

    .prologue
    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object p1, v0

    .line 146
    .end local p1
    :goto_0
    return-object p1

    .line 94
    .restart local p1
    :cond_1
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 95
    .local v9, mdAlbumIdIdx:I
    if-gez v9, :cond_2

    .line 96
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 98
    :cond_2
    if-gez v9, :cond_3

    .line 99
    const-string v0, "[DlArtAsyncQuery]"

    const-string v1, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    :try_start_0
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "dl_album_id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$000(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 113
    const/4 v8, 0x0

    .line 114
    .local v8, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    :cond_4
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 117
    if-gez v8, :cond_7

    .line 125
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$100(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    sget-object v1, Lcom/htc/dmc/utils/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$200()[Ljava/lang/String;

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

    .line 135
    .local v6, dlCursor:Landroid/database/Cursor;
    if-nez v6, :cond_8

    .line 146
    iget-object v0, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$100(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 105
    .end local v6           #dlCursor:Landroid/database/Cursor;
    .end local v8           #id:I
    .end local v10           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 106
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "[DlArtAsyncQuery]"

    const-string v1, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v8       #id:I
    .restart local v10       #selection:Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$000(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    .restart local v6       #dlCursor:Landroid/database/Cursor;
    :cond_8
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 141
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

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_9
    new-instance v0, Lcom/htc/dmc/utils/AlbumArtMergeCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v6, v1}, Lcom/htc/dmc/utils/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$100(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object p1, v0

    goto/16 :goto_0

    .end local v6           #dlCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$100(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$300(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 196
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;

    .line 200
    .local v6, args:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;
    iget v11, p1, Landroid/os/Message;->what:I

    .line 201
    .local v11, token:I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 203
    .local v9, event:I
    packed-switch v9, :pswitch_data_0

    .line 240
    :goto_1
    iget-object v1, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 241
    .local v10, reply:Landroid/os/Message;
    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 244
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

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 205
    .end local v10           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v7, 0x0

    .line 207
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 211
    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    invoke-virtual {v1, v7, v6}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->setDebugTrace(Landroid/database/Cursor;Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;)V

    .line 213
    if-eqz v7, :cond_2

    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 215
    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mJoinAlbumArt:Z
    invoke-static {v1}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$400(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-direct {p0, v7, v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v7

    .line 218
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;

    #getter for: Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$500(Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-direct {p0, v7, v0}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerHandler;->mergeDlAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 234
    :cond_2
    :goto_2
    iput-object v7, v6, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 222
    :catch_0
    move-exception v8

    .line 223
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[DlArtAsyncQuery]"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v7, 0x0

    .line 227
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_2

    if-eqz v6, :cond_2

    .line 229
    invoke-static {}, Lcom/htc/dmc/utils/DlArtAsyncQueryHandler;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

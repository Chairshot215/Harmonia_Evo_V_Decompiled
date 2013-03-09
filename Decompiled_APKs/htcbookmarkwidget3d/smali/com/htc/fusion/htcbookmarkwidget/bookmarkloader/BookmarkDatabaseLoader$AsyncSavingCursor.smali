.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;
.super Landroid/os/AsyncTask;
.source "BookmarkDatabaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AsyncSavingCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mRootList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    return-void
.end method

.method private convertCursorToBookmarkList(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v9, correctList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 228
    :cond_0
    const-string v1, "HtcBookmarkWidget"

    const-string v2, "Null cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v9, 0x0

    .line 269
    .end local v9           #correctList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :goto_0
    return-object v9

    .line 232
    .restart local v9       #correctList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_1
    if-nez p2, :cond_2

    .line 233
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local p2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 237
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 240
    const/4 v10, 0x0

    .line 241
    .local v10, data:[B
    const-string v1, "favicon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 242
    .local v11, i:I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_3

    .line 243
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 246
    :cond_3
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v10, :cond_6

    const/4 v4, 0x0

    :goto_2
    const-string v5, "created"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "folder"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "parent"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;JII)V

    .line 257
    .local v0, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const/4 v10, 0x0

    .line 260
    const-string v1, "thumbnail"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 261
    const/4 v1, -0x1

    if-eq v11, v1, :cond_4

    .line 262
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 264
    :cond_4
    if-eqz v10, :cond_5

    const/4 v1, 0x0

    array-length v2, v10

    invoke-static {v10, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 266
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 246
    .end local v0           #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :cond_6
    const/4 v4, 0x0

    array-length v5, v10

    invoke-static {v10, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    .line 268
    .end local v10           #data:[B
    .end local v11           #i:I
    :cond_7
    invoke-direct {p0, p2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->getCorrectList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private getCorrectList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v12, correctList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v14, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 278
    const/16 v18, 0x0

    .line 286
    .local v18, temp:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    const/4 v3, 0x1

    const-string v4, "Bookmarks"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;JII)V

    .line 287
    .local v2, rootFolder:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 292
    .local v13, f:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v13}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getFolderInfo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 293
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v13           #f:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 300
    .local v11, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v11}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getFolderInfo()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 303
    move-object/from16 v18, v11

    .line 305
    :cond_3
    const/16 v17, 0x0

    .line 306
    .local v17, isGetParent:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 307
    .restart local v13       #f:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface/range {v18 .. v18}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getParent()I

    move-result v3

    invoke-interface {v13}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getId()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 308
    const/16 v17, 0x1

    .line 309
    move-object/from16 v18, v13

    goto :goto_2

    .line 313
    .end local v13           #f:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->isRootParent(Lcom/htc/fusion/htcbookmarkwidget/IBookmark;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v17, :cond_3

    .line 314
    :cond_6
    if-eqz v17, :cond_2

    .line 315
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    .end local v11           #b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #isGetParent:Z
    :cond_7
    return-object v12
.end method

.method private isRootParent(Lcom/htc/fusion/htcbookmarkwidget/IBookmark;)Z
    .locals 6
    .parameter "b"

    .prologue
    .line 336
    const/4 v3, 0x0

    .line 338
    .local v3, isroot:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 340
    .local v1, i:I
    if-nez v3, :cond_0

    invoke-interface {p1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getId()I

    move-result v4

    if-ne v4, v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 342
    .end local v1           #i:I
    :cond_2
    monitor-exit v5

    .line 346
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_2
    return v3

    .line 342
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/util/ConcurrentModificationException;
    const-string v4, "HtcBookmarkWidget"

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, [Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->doInBackground([Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 198
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 200
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 201
    :cond_0
    const-string v2, "HtcBookmarkWidget"

    const-string v3, "Cursor is null or count <= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-object v1

    .line 205
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->convertCursorToBookmarkList(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 206
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    .line 209
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 214
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsSavingBookmark:Z

    .line 215
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onPostLoading(Ljava/util/ArrayList;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsSavingBookmark:Z

    .line 223
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsSavingBookmark:Z

    .line 193
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 194
    return-void
.end method

.method public setRootList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, rootlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 331
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->mRootList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BookmarkDatabaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    .line 92
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 184
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v0

    const/16 v3, 0x1000

    invoke-virtual {v0, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->removeMessages(I)V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 148
    const/16 v0, 0x9

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v6

    const-string v0, "url"

    aput-object v0, v4, v1

    const-string v0, "title"

    aput-object v0, v4, v5

    const/4 v0, 0x3

    const-string v3, "favicon"

    aput-object v3, v4, v0

    const/4 v0, 0x4

    const-string v3, "thumbnail"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string v3, "created"

    aput-object v3, v4, v0

    const/4 v0, 0x6

    const-string v3, "folder"

    aput-object v3, v4, v0

    const/4 v0, 0x7

    const-string v3, "parent"

    aput-object v3, v4, v0

    const/16 v0, 0x8

    const-string v3, "deleted"

    aput-object v3, v4, v0

    .line 161
    .local v4, PROJECTION:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v0

    const-string v3, "content://com.android.browser/bookmarks"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "deleted is 0 or parent is null or _id is 1"

    const-string v7, "created DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v4           #PROJECTION:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v5

    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v10, "bookmark = 1"

    const-string v12, "created DESC"

    move-object v7, v2

    move-object v11, v2

    invoke-virtual/range {v5 .. v12}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v0

    const/16 v3, 0x1001

    invoke-virtual {v0, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->removeMessages(I)V

    .line 173
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v6

    const-string v0, "parent"

    aput-object v0, v4, v1

    .line 178
    .restart local v4       #PROJECTION:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v5

    const-string v0, "content://com.android.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "Sync3 is \"bookmark_bar\" OR _id = 1"

    move-object v7, v2

    move-object v9, v4

    move-object v11, v2

    move-object v12, v2

    invoke-virtual/range {v5 .. v12}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 97
    if-ne p1, v4, :cond_0

    .line 98
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    invoke-direct {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)V

    .line 99
    .local v1, savingCursor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->setRootList(Ljava/util/ArrayList;)V

    .line 100
    new-array v2, v4, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    .end local v1           #savingCursor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$102(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    const-string v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 114
    const-string v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 118
    .local v0, rootId:I
    :goto_2
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 116
    .end local v0           #rootId:I
    :cond_5
    const-string v2, "parent"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .restart local v0       #rootId:I
    goto :goto_2
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onPreLoading()V

    .line 133
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onLoading()V

    .line 139
    :cond_1
    return-void
.end method

.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BookmarkWithTagFilterDatabaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# static fields
.field private static final MSG_QUERY_BY_INTERCEPTOR:I = 0x63


# instance fields
.field private mQueryInterceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    .line 99
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getQueryInterceptor()Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->mQueryInterceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 173
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 176
    :goto_0
    return-void

    .line 155
    :sswitch_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->removeMessages(I)V

    .line 156
    const/4 v9, 0x0

    .line 157
    .local v9, tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    move-object v9, v0

    check-cast v9, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    move-result-object v0

    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;-><init>(Landroid/content/ContentResolver;[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->setQueryInterceptor(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;)V

    .line 164
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v5, "bookmark = 1"

    const-string v7, "created DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v9           #tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;

    .line 170
    .local v8, args:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;
    iget v1, v8, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->token:I

    iget-object v2, v8, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->cookies:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 148
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$AsyncSavingCursor;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$AsyncSavingCursor;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)V

    .line 149
    .local v0, savingCursor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$AsyncSavingCursor;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$AsyncSavingCursor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method

.method public setQueryInterceptor(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;)V
    .locals 0
    .parameter "interceptor"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->mQueryInterceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

    .line 182
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onPreLoading()V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->getQueryInterceptor()Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

    move-result-object v0

    .line 110
    .local v0, interceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;
    if-eqz v0, :cond_2

    .line 112
    move-object v1, p2

    .line 113
    .local v1, myCookie:Ljava/lang/Object;
    move v2, p1

    .line 114
    .local v2, myToken:I
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;Ljava/lang/Object;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    .end local v1           #myCookie:Ljava/lang/Object;
    .end local v2           #myToken:I
    :goto_0
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onLoading()V

    .line 144
    :cond_1
    return-void

    .line 137
    :cond_2
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

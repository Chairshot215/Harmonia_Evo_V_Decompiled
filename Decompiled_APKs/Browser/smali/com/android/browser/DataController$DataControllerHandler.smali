.class Lcom/android/browser/DataController$DataControllerHandler;
.super Ljava/lang/Thread;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/DataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataControllerHandler"
.end annotation


# instance fields
.field private mMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/browser/DataController$DCMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/DataController;


# direct methods
.method constructor <init>(Lcom/android/browser/DataController;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/browser/DataController$DataControllerHandler;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private doQueryBookmarkStatus(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .parameter "url"
    .parameter "replyTo"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/DataController;->access$000(Lcom/android/browser/DataController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 189
    .local v7, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 190
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 192
    .local v10, isBookmark:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/DataController;->access$000(Lcom/android/browser/DataController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/DataController;->access$000(Lcom/android/browser/DataController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "url == ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 202
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_0
    :goto_0
    new-instance v6, Lcom/android/browser/DataController$CallbackContainer;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/browser/DataController$CallbackContainer;-><init>(Lcom/android/browser/DataController$1;)V

    .line 205
    .local v6, cc:Lcom/android/browser/DataController$CallbackContainer;
    iput-object p2, v6, Lcom/android/browser/DataController$CallbackContainer;->replyTo:Ljava/lang/Object;

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, v6, Lcom/android/browser/DataController$CallbackContainer;->args:[Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mCbHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/browser/DataController;->access$200(Lcom/android/browser/DataController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void

    .line 199
    .end local v6           #cc:Lcom/android/browser/DataController$CallbackContainer;
    :catch_0
    move-exception v9

    .line 200
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "DataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error checking for bookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private doUpdateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "title"

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/DataController;->access$000(Lcom/android/browser/DataController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v2, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private doUpdateVisitedHistory(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/browser/DataController$DataControllerHandler;->this$0:Lcom/android/browser/DataController;

    #getter for: Lcom/android/browser/DataController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/DataController;->access$000(Lcom/android/browser/DataController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 162
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "visits"

    aput-object v4, v2, v3

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v7, values:Landroid/content/ContentValues;
    const-string v1, "visits"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_0
    return-void

    .line 171
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 172
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v1, "url"

    invoke-virtual {v7, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "visits"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string v1, "title"

    invoke-virtual {v7, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "created"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v1, "user_entered"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private handleMessage(Lcom/android/browser/DataController$DCMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 141
    iget v1, p1, Lcom/android/browser/DataController$DCMessage;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 143
    :sswitch_0
    iget-object v1, p1, Lcom/android/browser/DataController$DCMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/browser/DataController$DataControllerHandler;->doUpdateVisitedHistory(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :sswitch_1
    iget-object v1, p1, Lcom/android/browser/DataController$DCMessage;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 147
    .local v0, args:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/DataController$DataControllerHandler;->doUpdateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0           #args:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, p1, Lcom/android/browser/DataController$DCMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/DataController$DCMessage;->replyTo:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/browser/DataController$DataControllerHandler;->doQueryBookmarkStatus(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 122
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/DataController$DataControllerHandler;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/DataController$DCMessage;

    invoke-direct {p0, v1}, Lcom/android/browser/DataController$DataControllerHandler;->handleMessage(Lcom/android/browser/DataController$DCMessage;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/InterruptedException;
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 130
    new-instance v0, Lcom/android/browser/DataController$DCMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/browser/DataController$DCMessage;-><init>(ILjava/lang/Object;)V

    .line 131
    .local v0, m:Lcom/android/browser/DataController$DCMessage;
    iget-object v1, p0, Lcom/android/browser/DataController$DataControllerHandler;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method sendMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "replyTo"

    .prologue
    .line 135
    new-instance v0, Lcom/android/browser/DataController$DCMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/browser/DataController$DCMessage;-><init>(ILjava/lang/Object;)V

    .line 136
    .local v0, m:Lcom/android/browser/DataController$DCMessage;
    iput-object p3, v0, Lcom/android/browser/DataController$DCMessage;->replyTo:Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/android/browser/DataController$DataControllerHandler;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

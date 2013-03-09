.class public Lcom/htc/content/NotifyingAsyncQueryHandler;
.super Lcom/htc/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;,
        Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerExt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "listener_ext"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListenerExt(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic IsProcessingRightAway()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/content/AsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    return v0
.end method

.method protected addTabMemoryMode(ILjava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 161
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->addTabMemoryMode(ILjava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 139
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 140
    invoke-interface/range {v0 .. v5}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onAddTabComplete()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 175
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onAddTabComplete()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 153
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 122
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 132
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 133
    invoke-interface/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 104
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 92
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-eqz p3, :cond_0

    .line 95
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 113
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 116
    :cond_0
    return-void
.end method

.method protected prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 2
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 146
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    .line 149
    :cond_0
    return-void
.end method

.method public bridge synthetic setNoEditorMode(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setNoEditorMode(Z)V

    return-void
.end method

.method public setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method

.method public setQueryListenerExt(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method

.method public bridge synthetic setToQueueMode(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setToQueueMode(Z)V

    return-void
.end method

.method public bridge synthetic startProcessingOperations()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/content/AsyncQueryHandler;->startProcessingOperations()V

    return-void
.end method

.method public bridge synthetic startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 37
    invoke-super/range {p0 .. p7}, Lcom/htc/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 168
    .local v0, listener:Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 171
    :cond_0
    return-void
.end method

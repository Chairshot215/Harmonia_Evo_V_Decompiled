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

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    invoke-virtual {p0, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setQueryListenerExt(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic IsProcessingRightAway()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/content/AsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    return v0
.end method

.method protected addTabMemoryMode(ILjava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->addTabMemoryMode(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAddTabComplete()V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onAddTabComplete()V

    :cond_0
    return-void
.end method

.method protected onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onDeleteComplete(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onUpdateComplete(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setNoEditorMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setNoEditorMode(Z)V

    return-void
.end method

.method public setQueryListener(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setQueryListenerExt(Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic setToQueueMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setToQueueMode(Z)V

    return-void
.end method

.method public bridge synthetic startProcessingOperations()V
    .locals 0

    invoke-super {p0}, Lcom/htc/content/AsyncQueryHandler;->startProcessingOperations()V

    return-void
.end method

.method public bridge synthetic startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/htc/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->updateTabMemoryMode(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

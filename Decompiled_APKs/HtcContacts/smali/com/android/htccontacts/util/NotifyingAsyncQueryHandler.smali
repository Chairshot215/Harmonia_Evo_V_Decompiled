.class public Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 63
    .local v0, listener:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0, p1, p2, p3}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p3, :cond_0

    .line 66
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setQueryListener(Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

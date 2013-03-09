.class public Lcom/htc/fusion/fx/MessageSource;
.super Ljava/lang/Object;
.source "MessageSource.java"

# interfaces
.implements Lcom/htc/fusion/fx/IMessageSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/IMessageSource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public bind(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/htc/fusion/fx/IMessageListener;->unbind()V

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/htc/fusion/fx/IMessageListener;->setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V

    return-void
.end method

.method public raiseMessage(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageListener;->onMessageReceived(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unbind(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/htc/fusion/fx/IMessageListener;->setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V

    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unbindAll()V
    .locals 4

    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/fusion/fx/IMessageListener;->setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/fusion/fx/MessageSource;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

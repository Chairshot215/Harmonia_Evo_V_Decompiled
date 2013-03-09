.class public abstract Lcom/google/android/marvin/utils/WeakReferenceHandler;
.super Landroid/os/Handler;
.source "WeakReferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/marvin/utils/WeakReferenceHandler;,"Lcom/google/android/marvin/utils/WeakReferenceHandler<TT;>;"
    .local p1, parent:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/WeakReferenceHandler;->mParentRef:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method protected getParent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/marvin/utils/WeakReferenceHandler;,"Lcom/google/android/marvin/utils/WeakReferenceHandler<TT;>;"
    iget-object v0, p0, Lcom/google/android/marvin/utils/WeakReferenceHandler;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 43
    .local p0, this:Lcom/google/android/marvin/utils/WeakReferenceHandler;,"Lcom/google/android/marvin/utils/WeakReferenceHandler<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/marvin/utils/WeakReferenceHandler;->getParent()Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, parent:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/marvin/utils/WeakReferenceHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation
.end method

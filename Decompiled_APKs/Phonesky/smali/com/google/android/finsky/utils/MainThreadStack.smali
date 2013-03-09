.class public Lcom/google/android/finsky/utils/MainThreadStack;
.super Ljava/util/Stack;
.source "MainThreadStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Stack",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lcom/google/android/finsky/utils/MainThreadStack;,"Lcom/google/android/finsky/utils/MainThreadStack<TT;>;"
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/finsky/utils/MainThreadStack;,"Lcom/google/android/finsky/utils/MainThreadStack<TT;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 36
    invoke-super {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/finsky/utils/MainThreadStack;,"Lcom/google/android/finsky/utils/MainThreadStack<TT;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 30
    invoke-super {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/google/android/finsky/utils/MainThreadStack;,"Lcom/google/android/finsky/utils/MainThreadStack<TT;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 18
    invoke-super {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/finsky/utils/MainThreadStack;,"Lcom/google/android/finsky/utils/MainThreadStack<TT;>;"
    .local p1, data:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 24
    invoke-super {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/finsky/library/RevokeListenerWrapper;
.super Ljava/lang/Object;
.source "RevokeListenerWrapper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCurrentAccount:Landroid/accounts/Account;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V
    .locals 0
    .parameter "replicators"
    .parameter "requestingAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/LibraryReplicators;",
            "Landroid/accounts/Account;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, listenerToWrap:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/RevokeResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    .line 21
    iput-object p2, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mCurrentAccount:Landroid/accounts/Account;

    .line 22
    iput-object p3, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mListener:Lcom/android/volley/Response$Listener;

    .line 23
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    iget-object v1, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    const-string v3, "revoke"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/RevokeListenerWrapper;->onResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)V

    return-void
.end method

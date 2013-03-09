.class Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

.field final synthetic val$debugTag:Ljava/lang/String;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->val$debugTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 87
    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    monitor-enter v5

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$100(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 89
    .local v3, replicators:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/LibraryReplicator;>;"
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;

    invoke-direct {v0, p0, v3}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;-><init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;Ljava/util/Collection;)V

    .line 99
    .local v0, callSuccessRunnableWhenDone:Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/LibraryReplicator;

    .line 100
    .local v2, replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->val$debugTag:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v6}, Lcom/google/android/finsky/library/LibraryReplicator;->replicate([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0           #callSuccessRunnableWhenDone:Ljava/lang/Runnable;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    .end local v3           #replicators:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/LibraryReplicator;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #callSuccessRunnableWhenDone:Ljava/lang/Runnable;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #replicators:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/LibraryReplicator;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return-void
.end method

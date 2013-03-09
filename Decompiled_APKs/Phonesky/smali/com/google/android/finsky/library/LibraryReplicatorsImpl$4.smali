.class Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$debugTag:Ljava/lang/String;

.field final synthetic val$update:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$update:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$debugTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$100(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "LibraryUpdate for unknown account %s could not be applied"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    monitor-exit v1

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "Applying library update: account=%s, corpus=%d, numMutations=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$update:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$update:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$100(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$update:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;->val$debugTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicator;->applyLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 140
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

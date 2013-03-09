.class Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$debugTag:Ljava/lang/String;

.field final synthetic val$libraryIds:[Ljava/lang/String;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$libraryIds:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$debugTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$100(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$libraryIds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$successRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;->val$debugTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/finsky/library/LibraryReplicator;->replicate([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

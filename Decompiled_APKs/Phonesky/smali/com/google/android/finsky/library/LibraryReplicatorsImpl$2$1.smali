.class Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFinished:I

.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

.field final synthetic val$replicators:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->val$replicators:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->mFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->mFinished:I

    .line 94
    iget v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->mFinished:I

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->val$replicators:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$200(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

    iget-object v1, v1, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;->val$successRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-void
.end method

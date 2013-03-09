.class Lcom/google/android/finsky/library/LibraryReplicator$3;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator;->notifyMutationListeners(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicator;

.field final synthetic val$libraryId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/library/LibraryReplicator$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$Listener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$3;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$3;->val$listener:Lcom/google/android/finsky/library/LibraryReplicator$Listener;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator$3;->val$libraryId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$3;->val$listener:Lcom/google/android/finsky/library/LibraryReplicator$Listener;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator$3;->val$libraryId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator$Listener;->onMutationsApplied(Ljava/lang/String;)V

    .line 348
    return-void
.end method

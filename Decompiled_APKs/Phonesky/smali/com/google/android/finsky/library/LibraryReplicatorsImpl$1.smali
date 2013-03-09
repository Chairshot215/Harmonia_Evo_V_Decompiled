.class Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryReplicator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->reinitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

.field final synthetic val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;->val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMutationsApplied(Ljava/lang/String;)V
    .locals 2
    .parameter "libraryId"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;->val$accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    #calls: Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->notifyListeners(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->access$000(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.class Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iput-object p2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    #getter for: Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;
    invoke-static {v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->access$000(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->delete(Ljava/lang/String;)V

    .line 104
    return-void
.end method

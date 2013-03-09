.class Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$mapCopy:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iput-object p2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->val$mapCopy:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    #getter for: Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;
    invoke-static {v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->access$000(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;->val$mapCopy:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    return-void
.end method

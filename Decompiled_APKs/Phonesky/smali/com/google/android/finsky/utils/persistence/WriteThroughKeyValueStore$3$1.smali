.class Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;

.field final synthetic val$backingData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;->this$1:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;

    iput-object p2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;->val$backingData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;->this$1:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;

    iget-object v0, v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;->val$backingData:Ljava/util/Map;

    #calls: Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->handleDataLoaded(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->access$100(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/util/Map;)V

    .line 170
    return-void
.end method
